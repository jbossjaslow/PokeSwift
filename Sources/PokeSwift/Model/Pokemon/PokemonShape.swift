//
//  PokemonShape.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class PokemonShape: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// The "scientific" name of this Pokemon shape listed in different languages.
	public let awesomeNames: [AwesomeName]
	/// The name of this resource listed in different languages.
	public let names: [Name]
	/// A list of the Pokemon species that have this shape.
	public let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]
}

public class AwesomeName: BaseResourceProtocol {
	/// The localized "scientific" name for an API resource in a specific language.
	public let awesomeName: String
	/// The language this "scientific" name is in.
	public let language: NamedAPIResource<Language>
}

extension PokemonShape: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/pokemon-shape/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "awesome_names": [
			{
			  "awesome_name": "Pomacé",
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  }
			},
			{
			  "awesome_name": "Pomaceous",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  }
			}
		  ],
		  "id": 1,
		  "name": "ball",
		  "names": [
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Balle"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Ball"
			}
		  ],
		  "pokemon_species": [
			{
			  "name": "shellder",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/90/"
			},
			{
			  "name": "gastly",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/92/"
			},
			{
			  "name": "voltorb",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/100/"
			},
			{
			  "name": "koffing",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/109/"
			},
			{
			  "name": "ditto",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/132/"
			},
			{
			  "name": "cloyster",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/91/"
			},
			{
			  "name": "electrode",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/101/"
			},
			{
			  "name": "sunkern",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/191/"
			},
			{
			  "name": "misdreavus",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/200/"
			},
			{
			  "name": "unown",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/201/"
			},
			{
			  "name": "pineco",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/204/"
			},
			{
			  "name": "forretress",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/205/"
			},
			{
			  "name": "silcoon",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/266/"
			},
			{
			  "name": "cascoon",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/268/"
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
			  "name": "castform",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/351/"
			},
			{
			  "name": "shuppet",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/353/"
			},
			{
			  "name": "clamperl",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/366/"
			},
			{
			  "name": "glalie",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/362/"
			},
			{
			  "name": "bronzor",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/436/"
			},
			{
			  "name": "mismagius",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/429/"
			},
			{
			  "name": "rotom",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/479/"
			},
			{
			  "name": "cottonee",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/546/"
			},
			{
			  "name": "solosis",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/577/"
			},
			{
			  "name": "ferroseed",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/597/"
			},
			{
			  "name": "whirlipede",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/544/"
			},
			{
			  "name": "duosion",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/578/"
			},
			{
			  "name": "cryogonal",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/615/"
			},
			{
			  "name": "shelmet",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/616/"
			},
			{
			  "name": "carbink",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/703/"
			},
			{
			  "name": "klefki",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/707/"
			},
			{
			  "name": "pumpkaboo",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/710/"
			},
			{
			  "name": "comfey",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/764/"
			},
			{
			  "name": "minior",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/774/"
			},
			{
			  "name": "cosmog",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/789/"
			},
			{
			  "name": "meltan",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/808/"
			},
			{
			  "name": "rolycoly",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/837/"
			},
			{
			  "name": "cosmoem",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/790/"
			},
			{
			  "name": "sinistea",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/854/"
			},
			{
			  "name": "milcery",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/868/"
			},
			{
			  "name": "polteageist",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/855/"
			}
		  ]
		}
		"""#
	}
}
