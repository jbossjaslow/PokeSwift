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

public extension APIResource {
	func request(completion: @escaping (_ result: ResourceType?) -> Void) {
		if let cachedObject = baseResourceCache[url] as? ResourceType {
			completion(cachedObject)
			return
		} else {
			SessionManager.makeRequest(url: url) { (_ result: Result<ResourceType, APIError>) in
				switch result {
					case .success(let requestedResult):
						completion(requestedResult)
						baseResourceCache[url] = requestedResult
						return
					case .failure(let error):
						print(error.localizedDescription)
						completion(nil)
						return
				}
			}
		}
	}
}
