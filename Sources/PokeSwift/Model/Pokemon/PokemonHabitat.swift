//
//  PokemonHabitat.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//
import Foundation

public class PokemonHabitat: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// The name of this resource listed in different languages.
	public let names: [Name]?
	/// A list of the Pokemon species that can be found in this habitat.
	public let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]?
}

extension PokemonHabitat: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/pokemon-habitat/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "id": 1,
		  "name": "cave",
		  "names": [
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "grottes"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "caverna"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "cave"
			}
		  ],
		  "pokemon_species": [
			{
			  "name": "zubat",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/41/"
			},
			{
			  "name": "diglett",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/50/"
			},
			{
			  "name": "golbat",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/42/"
			},
			{
			  "name": "dugtrio",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/51/"
			},
			{
			  "name": "gastly",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/92/"
			},
			{
			  "name": "onix",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/95/"
			},
			{
			  "name": "haunter",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/93/"
			},
			{
			  "name": "gengar",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/94/"
			},
			{
			  "name": "misdreavus",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/200/"
			},
			{
			  "name": "dunsparce",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/206/"
			},
			{
			  "name": "swinub",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/220/"
			},
			{
			  "name": "crobat",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/169/"
			},
			{
			  "name": "wobbuffet",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/202/"
			},
			{
			  "name": "steelix",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/208/"
			},
			{
			  "name": "piloswine",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/221/"
			},
			{
			  "name": "whismur",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/293/"
			},
			{
			  "name": "nosepass",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/299/"
			},
			{
			  "name": "loudred",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/294/"
			},
			{
			  "name": "exploud",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/295/"
			},
			{
			  "name": "sableye",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/302/"
			},
			{
			  "name": "mawile",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/303/"
			},
			{
			  "name": "lunatone",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/337/"
			},
			{
			  "name": "solrock",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/338/"
			},
			{
			  "name": "wynaut",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/360/"
			},
			{
			  "name": "snorunt",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/361/"
			},
			{
			  "name": "glalie",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/362/"
			},
			{
			  "name": "regirock",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/377/"
			},
			{
			  "name": "regice",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/378/"
			},
			{
			  "name": "registeel",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/379/"
			}
		  ]
		}
		"""#
	}
}
