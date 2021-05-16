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

extension NamedAPIResource where ResourceType: Pokemon {
	
}

public extension NamedAPIResource {
	func request(completion: @escaping (_ result: ResourceType?) -> Void) {
		SessionManager.makeRequest(url: url) { (_ result: Result<ResourceType, APIError>) in
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
