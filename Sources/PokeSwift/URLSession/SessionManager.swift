//
//  SessionManager.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public struct SessionManager {
	
	public static func makeRequest<T:BaseResourceProtocol>(url: String,
														   completion: @escaping ((Result<T, APIError>) -> Void)) {
		call(url: url) { result in
			switch result {
				case .success(let data):
					decodeJSON(from: data,
							   completion: completion)
				case .failure(let error):
					completion(.failure(error))
			}
		}
	}
	
	public static func call(url: String,
							completion: @escaping (Result<Data, APIError>) -> Void) {
		guard let url = URL(string: url) else {
			fatalError("There is a problem creating the url")
		}
		let session = URLSession.shared
		
		session.dataTask(with: url) { data, response, error in
			handleCallResponse(data: data,
							   response: response,
							   error: error,
							   completion: completion)
		}.resume()
	}
	
	public static func handleCallResponse(data: Data?,
										  response: URLResponse?,
										  error: Error?,
										  completion: @escaping (Result<Data, APIError>) -> Void) {
		if let error = error {
			print(error.localizedDescription)
			completion(.failure(.serverError))
			return
		}
		
		guard let httpResponse = response as? HTTPURLResponse,
			  200..<300 ~= httpResponse.statusCode else {
			print("Bad response, check input")
			completion(.failure(.serverError))
			return
		}
		
		guard let mime = response?.mimeType,
			  mime == "application/json" else {
			print("Wrong mime type, expecting json")
			completion(.failure(.parsingError))
			return
		}
		
		guard let data = data else {
			print(error!.localizedDescription)
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
