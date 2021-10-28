//
//  File.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public struct NamedAPIResource<ResourceType: BaseResourceProtocol>: BaseResourceProtocol {
	/// The name of the referenced resource.
	public let name: String
	/// The URL of the referenced resource.
	public let url: String
}

public extension NamedAPIResource where ResourceType == Pokemon {
	public init(species: NamedAPIResource<PokemonSpecies>) {
		self.name = species.name
		self.url = Pokemon.url + species.name
	}
}

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

extension NamedAPIResource: Identifiable {
	public var id: UUID {
		UUID()
	}
}
