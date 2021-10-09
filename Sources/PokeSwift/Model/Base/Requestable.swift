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
	static func request(using input: RequestInputType) async throws -> Self
	static func requestDynamicList<T: BaseResourceProtocol>(resourceLimit: Int,
															offset: Int) async throws -> PagedList<T>
	static func requestStaticList<T: BaseResourceProtocol>(resourceLimit: Int) async throws -> PagedList<T>
	/// Test response used for debugging purposes
	static var testResponse: String { get }
}

public extension Requestable {
	/**
	 Request resources from the PokeAPI
	 - Parameters:
	   - input: `RequestInputType` A string or integer representing the specific resource being requested
	
	 - Usage:
		```
		let pokemon = try await Pokemon.request(using: .string("Bulbasaur"))
		```
	*/
	/// Request a resource using the `Async-Await` protocol
	/// - Returns: `Self` the type calling this function
	static func request(using input: RequestInputType) async throws -> Self {
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
		
		if let cachedObject = baseResourceCache[queryURL] as? Self {
			return cachedObject
		} else {
			let requestedResult: Self = try await SessionManager.makeRequest(url: queryURL)
			baseResourceCache[queryURL] = requestedResult
			return requestedResult
		}
	}
	
	//MARK: - Resource List
	
	/// Request a dynamic list of some of the members of the resource type
	/// - Parameters:
	///   - resourceLimit: Number of items to fetch
	///   - offset: Offset to start at
	///   - completion: `PagedList` with urls and array of `NamedAPIResource`
	static func requestDynamicList<T: BaseResourceProtocol>(resourceLimit: Int = -1,
															offset: Int = -1) async throws -> PagedList<T> {
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
		
		return try await requestList(from: adjustedURL)
	}
	
	/// Request a static list of all members of the resource type
	/// - Parameters:
	///   - resourceLimit: Number of items to fetch
	///   - completion: `PagedList` with urls and array of `NamedAPIResource`
	static func requestStaticList<T: BaseResourceProtocol>(resourceLimit: Int) async throws -> PagedList<T> {
		let adjustedURL = url + "?limit=\(resourceLimit)"
		
		if let cachedObject = baseResourceCache[adjustedURL] as? PagedList<T> {
			return cachedObject
		} else {
			return try await requestList(from: adjustedURL)
		}
	}
	
	static func requestList<T: BaseResourceProtocol>(from url: String) async throws -> PagedList<T> {
		return try await SessionManager.makeRequest(url: url)
	}
}
