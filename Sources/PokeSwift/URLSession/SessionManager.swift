//
//  SessionManager.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation
import UIKit

@available(iOS 15.0, *)
public struct SessionManager {
	
	public enum MimeType: String {
		case json = "application/json"
		case image = "image/png"
	}
	
	public static func makeRequest<T: BaseResourceProtocol>(url: String) async throws -> T {
		guard !url.isEmpty else {
			throw APIError.internalError
		}
		
		let data = try await call(url: url,
								  requestType: .json)
		return try decodeJSON(from: data)
	}
	
//	public static func requestImage(url: String,
//									completion: @escaping ((Result<UIImage, APIError>) -> Void)) {
//		guard !url.isEmpty else {
//			completion(.failure(.internalError))
//			return
//		}
//
//		if let cachedObject = imageCache[url] {
//			completion(.success(cachedObject))
//			return
//		} else {
//			call(url: url,
//				 requestType: .image) { result in
//				switch result {
//					case .success(let data):
//						if let image = UIImage(data: data) {
//							imageCache[url] = image
//							completion(.success(image))
//							return
//						} else {
//							fallthrough
//						}
//					default:
//						completion(.failure(.imageDecodingError))
//				}
//			}
//		}
//	}
	
	//MARK: - Call and handle response
	public static func call(url: String,
							requestType: MimeType) async throws -> Data {
		guard !url.isEmpty,
			  let URL = URL(string: url) else {
			throw APIError.internalError
		}
		
		let (data, response) = try await URLSession.shared.data(from: URL)
		return try handleCallResponse(data: data,
											response: response,
											requestType: requestType)
	}
	
	public static func handleCallResponse(data: Data?,
										  response: URLResponse?,
										  requestType: MimeType) throws -> Data {
		if let httpResponse = response as? HTTPURLResponse,
		   let status = httpResponse.status {
			switch status.responseType {
				case .success:
					break
				default:
					throw APIError.httpStatusCodeError(status)
			}
		}
		
		guard let mime = response?.mimeType,
			  mime == requestType.rawValue else {
				  print("Wrong mime type, expecting \(requestType.rawValue). Received mime type was \(response?.mimeType ?? "ERROR RETRIEVING MIME TYPE")")
				  throw APIError.parsingError
			  }
		
		guard let data = data else {
			print("Data is nil.")
			throw APIError.parsingError
		}
		
		return data
	}
	
	public static func decodeJSON<T: BaseResourceProtocol>(from data: Data) throws -> T {
		let decoder = JSONDecoder()
		decoder.keyDecodingStrategy = .convertFromSnakeCase
		return try decoder.decode(T.self, from: data)
	}
}
