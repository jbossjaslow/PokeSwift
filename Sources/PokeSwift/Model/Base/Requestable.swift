//
//  File.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

public enum RequestInputType {
	case name(String)
	case id(Int)
}

public protocol Requestable {
	static var url: String { get }
	static func request<T>(using input: RequestInputType,
						   completion: @escaping (T?) -> Void) where T: BaseResourceProtocol
	static func requestList<T>(resourceLimit: Int,
							   offset: Int,
							   completion: @escaping ([NamedAPIResource<T>]?) -> Void) where T: BaseResourceProtocol
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
		var inputAsString: String {
			switch input {
				case .name(let s):
					return s
				case .id(let i):
					return "\(i)"
			}
		}
		let queryURL = url + inputAsString
		
		if let cachedObject = baseResourceCache[queryURL] as? T {
			completion(cachedObject)
			return
		} else {
			SessionManager.makeRequest(url: queryURL) { (_ result: Result<T, APIError>) in
				switch result {
					case .success(let requestedResult):
						baseResourceCache[queryURL] = requestedResult
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
	
	static func requestList<T>(resourceLimit: Int = -1,
							   offset: Int = -1,
							   completion: @escaping ([NamedAPIResource<T>]?) -> Void) where T: BaseResourceProtocol {
		var adjustedURL: String {
			switch (resourceLimit, offset) {
				case (-1, -1): return url
				case (0...,-1):
					return url + "?limit=\(resourceLimit)"
				case (-1,0...):
					return url + "?offset=\(offset)"
				case (0...,0...):
					return url + "?offset=\(offset)&limit=\(resourceLimit)"
				default:
					return ""
			}
		}
		
		SessionManager.makeRequest(url: adjustedURL) { (_ result: Result<PagedList<T>, APIError>) in
			switch result {
				case .success(let requestedResult):
					completion(requestedResult.results)
					return
				case .failure(let error):
					print(error.localizedDescription)
					completion(nil)
					return
			}
		}
	}
}
