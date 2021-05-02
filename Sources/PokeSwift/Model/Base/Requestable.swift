//
//  File.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

public enum RequestInputType {
	case string(String)
	case int(Int)
}

public protocol Requestable {
	static var url: String { get }
	static func request<T>(using input: RequestInputType,
						   completion: @escaping (T?) -> Void) where T: BaseResourceProtocol
	/// Test response used for debugging purposes
	static var testResponse: String { get }
}

public extension Requestable {
	/**
	 Request resources from the PokeAPI
	 - Parameters:
	   - input: `RequestInputType` A string or integer representing the specific resource being requested
	   - completion: `@escaping (_ result: T?) -> Void)` The result of the specified model
	
	 - Usage:
		```
		Berry.request(using: .string("Cheri")) { (_ result: Berry?) in
		    guard let berry = result else {
			    return
		    }
		
		    print(berry.growth_time)
		}
		```
	*/
	static func request<T>(using input: RequestInputType,
						   completion: @escaping (_ result: T?) -> Void) where T: BaseResourceProtocol {
		var inputAsString = ""
		switch input {
			case .string(let s):
				inputAsString = s
			case .int(let i):
				inputAsString = "\(i)"
		}
		
		let queryURL = url + inputAsString
		SessionManager.makeRequest(url: queryURL) { (_ result: Result<T, APIError>) in
			switch result {
				case .success(let requestedResult):
					completion(requestedResult)
					return
				case .failure(let error):
					print(error.localizedDescription)
					completion(nil)
					return
			}
		}
	}
}
