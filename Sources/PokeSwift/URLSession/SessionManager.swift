//
//  SessionManager.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation
import UIKit

internal actor SessionManager {
	internal enum MimeType: String {
		case json = "application/json"
		case image = "image/png"
	}
	
	//MARK: - Make Request
	internal static func makeRequest<T: BaseResourceProtocol>(url: String) async throws -> T {
		guard !url.isEmpty else {
			throw APIError.internalError
		}
		
		let data = try await call(url: url,
								  requestType: .json)
		return try decodeJSON(from: data)
	}
	
	//MARK: - Call and handle response
	internal static func call(url: String,
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
	
	internal static func handleCallResponse(data: Data?,
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
	
	//MARK: - Decode JSON
	/// Decodes an object from JSON data
	/// - Returns: `T` The type of object to decode into
	internal static func decodeJSON<T: BaseResourceProtocol>(from data: Data) throws -> T {
		let decoder = JSONDecoder()
		decoder.keyDecodingStrategy = .convertFromSnakeCase
		return try decoder.decode(T.self, from: data)
	}
}
