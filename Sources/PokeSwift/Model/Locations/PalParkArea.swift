//
//  PalParkArea.swift
//  
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class PalParkArea: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// The name of this item in different languages.
	public let names: [Name]?
	/// A list of Pokemon encounteres in the Pal Park area along with details.
	public let pokemonEncounters: [PalParkEncounterSpecies]?
}

public class PalParkEncounterSpecies: BaseResourceProtocol {
	/// The base score given to the player when this Pokemon is caught during a Pal Park run.
	public let baseScore: Int?
	/// The base rate for encountering this Pokemon in this Pal Park area.
	public let rate: Int?
	/// The Pokemon species being encountered.
	public let pokemonSpecies: NamedAPIResource<PokemonSpecies>?
}

extension PalParkArea: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/pal-park-area/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "id": 1,
		  "name": "forest",
		  "names": [
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Forêt"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "Bosque"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Forest"
			}
		  ],
		  "pokemon_encounters": [
			{
			  "base_score": 30,
			  "pokemon_species": {
				"name": "caterpie",
				"url": "https://pokeapi.co/api/v2/pokemon-species/10/"
			  },
			  "rate": 50
			},
			{
			  "base_score": 50,
			  "pokemon_species": {
				"name": "metapod",
				"url": "https://pokeapi.co/api/v2/pokemon-species/11/"
			  },
			  "rate": 30
			},
			{
			  "base_score": 70,
			  "pokemon_species": {
				"name": "butterfree",
				"url": "https://pokeapi.co/api/v2/pokemon-species/12/"
			  },
			  "rate": 20
			},
			{
			  "base_score": 30,
			  "pokemon_species": {
				"name": "weedle",
				"url": "https://pokeapi.co/api/v2/pokemon-species/13/"
			  },
			  "rate": 50
			},
			{
			  "base_score": 50,
			  "pokemon_species": {
				"name": "kakuna",
				"url": "https://pokeapi.co/api/v2/pokemon-species/14/"
			  },
			  "rate": 30
			},
			{
			  "base_score": 70,
			  "pokemon_species": {
				"name": "beedrill",
				"url": "https://pokeapi.co/api/v2/pokemon-species/15/"
			  },
			  "rate": 20
			}
		  ]
		}
		"""#
	}
}
