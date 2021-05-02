//
//  APIError.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public enum APIError: Error {
	case internalError
	case serverError
	case parsingError
	case jsonDecodingError
	case httpStatusCodeError(HTTPStatusCode)
}

extension APIError: LocalizedError {
	public var errorDescription: String? {
		switch self {
			case .internalError:
				return NSLocalizedString("There was an internal error",
										 comment: "Custom error")
			case .serverError:
				return NSLocalizedString("There was an error with the server",
										 comment: "Custom error")
			case .parsingError:
				return NSLocalizedString("There was an error parsing the data",
										 comment: "Custom error")
			case .jsonDecodingError:
				return NSLocalizedString("There was an error decoding the JSON",
										 comment: "Custom error")
			case .httpStatusCodeError(let status):
				return NSLocalizedString("There was an abnormal http status code: \(status.rawValue) - \(status.localizedDescription)",
										 comment: "Custom error")
		}
	}
}
