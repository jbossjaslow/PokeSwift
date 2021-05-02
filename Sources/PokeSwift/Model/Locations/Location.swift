//
//  Location.swift
//  
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class Location: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// The region this location can be found in.
	public let region: NamedAPIResource<Region>?
	/// The name of this item in different languages.
	public let names: [Name]?
	/// A list of game indices relevant to this location by generation.
	public let gameIndices: [GenerationGameIndex]?
	/// Areas that can be found within this location.
	public let areas: [NamedAPIResource<LocationArea>]?
}

extension Location: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/location/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "areas": [
			{
			  "name": "canalave-city-area",
			  "url": "https://pokeapi.co/api/v2/location-area/1/"
			}
		  ],
		  "game_indices": [
			{
			  "game_index": 7,
			  "generation": {
				"name": "generation-iv",
				"url": "https://pokeapi.co/api/v2/generation/4/"
			  }
			}
		  ],
		  "id": 1,
		  "name": "canalave-city",
		  "names": [
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Joliberges"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Canalave City"
			}
		  ],
		  "region": {
			"name": "sinnoh",
			"url": "https://pokeapi.co/api/v2/region/4/"
		  }
		}
		"""#
	}
}
