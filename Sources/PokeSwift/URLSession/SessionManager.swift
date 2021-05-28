//
//  SessionManager.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation
import UIKit

public struct SessionManager {
	
	public enum MimeType: String {
		case json = "application/json"
		case image = "image/png"
	}
	
	//MARK: - Make requests
	public static func makeRequest<T:BaseResourceProtocol>(url: String,
														   completion: @escaping ((Result<T, APIError>) -> Void)) {
		guard !url.isEmpty else {
			completion(.failure(.internalError))
			return
		}
		
		call(url: url,
			 requestType: .json) { result in
			switch result {
				case .success(let data):
					decodeJSON(from: data,
							   completion: completion)
				case .failure(let error):
					completion(.failure(error))
			}
		}
	}
	
	public static func requestImage(url: String,
									completion: @escaping ((Result<UIImage, APIError>) -> Void)) {
		guard !url.isEmpty else {
			completion(.failure(.internalError))
			return
		}
		
		if let cachedObject = imageCache[url] {
			completion(.success(cachedObject))
			return
		} else {
			call(url: url,
				 requestType: .image) { result in
				switch result {
					case .success(let data):
						if let image = UIImage(data: data) {
							imageCache[url] = image
							completion(.success(image))
							return
						} else {
							fallthrough
						}
					default:
						completion(.failure(.imageDecodingError))
				}
			}
		}
	}
	
	//MARK: - Call and handle response
	public static func call(url: String,
							requestType: MimeType,
							completion: @escaping (Result<Data, APIError>) -> Void) {
		guard !url.isEmpty,
			  let url = URL(string: url) else {
			completion(.failure(.internalError))
			return
		}
		let session = URLSession.shared
		
		session.dataTask(with: url) { data, response, error in
			handleCallResponse(data: data,
							   response: response,
							   error: error,
							   requestType: requestType,
							   completion: completion)
		}.resume()
	}
	
	public static func handleCallResponse(data: Data?,
										  response: URLResponse?,
										  error: Error?,
										  requestType: MimeType,
										  completion: @escaping (Result<Data, APIError>) -> Void) {
		if let error = error {
			print("Server error. Description: \(error.localizedDescription)")
			completion(.failure(.serverError))
			return
		}
		
		if let httpResponse = response as? HTTPURLResponse,
		   let status = httpResponse.status {
			switch status.responseType {
				case .success:
					break
				default:
					completion(.failure(.httpStatusCodeError(status)))
			}
		}
		
		guard let mime = response?.mimeType,
			  mime == requestType.rawValue else {
			print("Wrong mime type, expecting \(requestType.rawValue). Received mime type was \(response?.mimeType ?? "ERROR RETRIEVING MIME TYPE")")
			completion(.failure(.parsingError))
			return
		}
		
		guard let data = data else {
			print("Data is nil. Error: \(error?.localizedDescription ?? "NO ERROR GIVEN")")
			completion(.failure(.parsingError))
			return
		}
		
		completion(.success(data))
	}
	
	public static func decodeJSON<T:BaseResourceProtocol>(from data: Data,
														  completion: @escaping (Result<T, APIError>) -> Void) {
		let decoder = JSONDecoder()
		decoder.keyDecodingStrategy = .convertFromSnakeCase
		
		do {
			let json = try decoder.decode(T.self, from: data)
//			print("JSON decoding passed")
			completion(.success(json))
			return
		} catch DecodingError.keyNotFound(let key, let context) {
			print("Could not find key \(key) in JSON: \(context.debugDescription)")
		} catch DecodingError.valueNotFound(let type, let context) {
			print("Could not find type \(type) in JSON: \(context.debugDescription)")
		} catch DecodingError.typeMismatch(let type, let context) {
			print("Type mismatch for type \(type) in JSON: \(context.debugDescription)")
		} catch DecodingError.dataCorrupted(let context) {
			print("Data found to be corrupted in JSON: \(context.debugDescription)")
		} catch let error as NSError {
			print("Error in read(from:ofType:) domain= \(error.domain), description= \(error.localizedDescription)")
		}
		
		completion(.failure(.jsonDecodingError))
	}
}
