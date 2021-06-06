//
//  File.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

public enum RequestInputType {
	case name(String)
	case id(Int)
	case url(String)
}

public protocol Requestable: BaseResourceProtocol {
	static var url: String { get }
	static func request<T>(using input: RequestInputType,
						   completion: @escaping (T?) -> Void) where T: BaseResourceProtocol
	static func requestDynamicList<T>(resourceLimit: Int,
									  offset: Int,
									  completion: @escaping (PagedList<T>?) -> Void) where T: BaseResourceProtocol
	static func requestStaticList<T>(resourceLimit: Int,
									 completion: @escaping (PagedList<T>?) -> Void) where T: BaseResourceProtocol
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
		var queryURL: String {
			switch input {
				case .name(let s):
					return self.url + s
				case .id(let i):
					return self.url + "\(i)"
				case .url(let u):
					return u
			}
		}
		
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
	
	//MARK: - Resource List
	
	/// Request a dynamic list of some of the members of the resource type
	/// - Parameters:
	///   - resourceLimit: Number of items to fetch
	///   - offset: Offset to start at
	///   - completion: `PagedList` with urls and array of `NamedAPIResource`
	static func requestDynamicList<T>(resourceLimit: Int = -1,
									  offset: Int = -1,
									  completion: @escaping (PagedList<T>?) -> Void) where T: BaseResourceProtocol {
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
		
		requestList(from: adjustedURL,
					completion: completion)
	}
	
	/// Request a static list of all members of the resource type
	/// - Parameters:
	///   - resourceLimit: Number of items to fetch
	///   - completion: `PagedList` with urls and array of `NamedAPIResource`
	static func requestStaticList<T>(resourceLimit: Int,
									 completion: @escaping (PagedList<T>?) -> Void) where T: BaseResourceProtocol {
		let adjustedURL = url + "?limit=\(resourceLimit)"
		
		if let cachedObject = baseResourceCache[adjustedURL] as? PagedList<T> {
			completion(cachedObject)
			return
		} else {
			requestList(from: adjustedURL,
						completion: completion)
		}
	}
	
	static func requestList<T>(from url: String,
							   completion: @escaping (PagedList<T>?) -> Void) where T: BaseResourceProtocol {
		SessionManager.makeRequest(url: url) { (_ result: Result<PagedList<T>, APIError>) in
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
