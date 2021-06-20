//
//  File.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

public struct NamedAPIResource<ResourceType: BaseResourceProtocol>: BaseResourceProtocol {
	/// The name of the referenced resource.
	public let name: String
	/// The URL of the referenced resource.
	public let url: String
}

//extension NamedAPIResource where ResourceType: Pokemon {
//
//}

@available(iOS 15.0, *)
public extension NamedAPIResource {
	func request() async throws -> ResourceType {
		if let cachedObject = baseResourceCache[url] as? ResourceType {
			return cachedObject
		} else {
			let requestedResult: ResourceType = try await SessionManager.makeRequest(url: url)
			baseResourceCache[url] = requestedResult
			return requestedResult
		}
	}
}
