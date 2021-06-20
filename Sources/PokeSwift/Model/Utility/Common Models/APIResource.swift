//
//  File.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

public struct APIResource<ResourceType: BaseResourceProtocol>: BaseResourceProtocol {
	/// The URL of the referenced resource.
	public let url: String
}

@available(iOS 15.0, *)
public extension APIResource {
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
