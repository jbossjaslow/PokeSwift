//
//  File.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

public struct APIResource<Type: BaseResourceProtocol>: BaseResourceProtocol {
	/// The URL of the referenced resource.
	public let url: String
}

extension APIResource {
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
