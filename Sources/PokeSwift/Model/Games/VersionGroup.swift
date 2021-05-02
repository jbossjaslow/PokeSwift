//
//  File.swift
//  
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class VersionGroup: BaseResourceProtocol {
	// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// Order for sorting. Almost by date of release, except similar versions are grouped together.
	public let order: Int
	/// The generation this version was introduced in.
	public let generation: NamedAPIResource<Generation>
	/// A list of methods in which Pokemon can learn moves in this version group.
	public let moveLearnMethods: [NamedAPIResource<MoveLearnMethod>]
	/// A list of all Pokedexes introduced in this version group.
	public let pokedexes: [NamedAPIResource<Pokedex>]
	/// A list of regions that can be visited in thsi version group.
	public let regions: [NamedAPIResource<Region>]
	/// The versions this group owns.
	public let versions: [NamedAPIResource<Version>]
}

extension VersionGroup: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/version-group/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "generation": {
			"name": "generation-i",
			"url": "https://pokeapi.co/api/v2/generation/1/"
		  },
		  "id": 1,
		  "move_learn_methods": [
			{
			  "name": "level-up",
			  "url": "https://pokeapi.co/api/v2/move-learn-method/1/"
			},
			{
			  "name": "machine",
			  "url": "https://pokeapi.co/api/v2/move-learn-method/4/"
			},
			{
			  "name": "stadium-surfing-pikachu",
			  "url": "https://pokeapi.co/api/v2/move-learn-method/5/"
			}
		  ],
		  "name": "red-blue",
		  "order": 1,
		  "pokedexes": [
			{
			  "name": "kanto",
			  "url": "https://pokeapi.co/api/v2/pokedex/2/"
			}
		  ],
		  "regions": [
			{
			  "name": "kanto",
			  "url": "https://pokeapi.co/api/v2/region/1/"
			}
		  ],
		  "versions": [
			{
			  "name": "red",
			  "url": "https://pokeapi.co/api/v2/version/1/"
			},
			{
			  "name": "blue",
			  "url": "https://pokeapi.co/api/v2/version/2/"
			}
		  ]
		}
		"""#
	}
}
