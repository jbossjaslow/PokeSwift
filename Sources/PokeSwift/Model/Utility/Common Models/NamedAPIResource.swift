//
//  File.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

public struct NamedAPIResource<Type: BaseResourceProtocol>: BaseResourceProtocol {
	/// The name of the referenced resource.
	public let name: String
	/// The URL of the referenced resource.
	public let url: String
}

public extension NamedAPIResource {
	func request(completion: @escaping (_ result: Type?) -> Void) {
		SessionManager.makeRequest(url: url) { (_ result: Result<Type, APIError>) in
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
