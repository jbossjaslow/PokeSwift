//
//  PokeathlonStat.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class PokeathlonStat: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// The name of this resource listed in different languages.
	public let names: [Name]
	/// A detail of natures which affect this Pokéathlon stat positively or negatively.
	public let affectingNatures: NaturePokeathlonStatAffectSets
}

public class NaturePokeathlonStatAffect: BaseResourceProtocol {
	/// The maximum amount of change to the referenced Pokéathlon stat.
	public let maxChange: Int
	/// The nature causing the change.
	public let nature: NamedAPIResource<Nature>
}

public class NaturePokeathlonStatAffectSets: BaseResourceProtocol {
	/// A list of natures and how they change the referenced Pokéathlon stat.
	public let increase: [NaturePokeathlonStatAffect]
	/// A list of natures and how they change the referenced Pokéathlon stat.
	public let decrease: [NaturePokeathlonStatAffect]
}

extension PokeathlonStat: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/pokeathlon-stat/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "affecting_natures": {
			"decrease": [
			  {
				"max_change": -1,
				"nature": {
				  "name": "hardy",
				  "url": "https://pokeapi.co/api/v2/nature/1/"
				}
			  },
			  {
				"max_change": -2,
				"nature": {
				  "name": "bold",
				  "url": "https://pokeapi.co/api/v2/nature/2/"
				}
			  },
			  {
				"max_change": -2,
				"nature": {
				  "name": "modest",
				  "url": "https://pokeapi.co/api/v2/nature/3/"
				}
			  },
			  {
				"max_change": -2,
				"nature": {
				  "name": "calm",
				  "url": "https://pokeapi.co/api/v2/nature/4/"
				}
			  },
			  {
				"max_change": -1,
				"nature": {
				  "name": "bashful",
				  "url": "https://pokeapi.co/api/v2/nature/13/"
				}
			  },
			  {
				"max_change": -2,
				"nature": {
				  "name": "lax",
				  "url": "https://pokeapi.co/api/v2/nature/18/"
				}
			  },
			  {
				"max_change": -2,
				"nature": {
				  "name": "brave",
				  "url": "https://pokeapi.co/api/v2/nature/21/"
				}
			  },
			  {
				"max_change": -2,
				"nature": {
				  "name": "relaxed",
				  "url": "https://pokeapi.co/api/v2/nature/22/"
				}
			  },
			  {
				"max_change": -2,
				"nature": {
				  "name": "quiet",
				  "url": "https://pokeapi.co/api/v2/nature/23/"
				}
			  },
			  {
				"max_change": -2,
				"nature": {
				  "name": "sassy",
				  "url": "https://pokeapi.co/api/v2/nature/24/"
				}
			  }
			],
			"increase": [
			  {
				"max_change": 2,
				"nature": {
				  "name": "timid",
				  "url": "https://pokeapi.co/api/v2/nature/5/"
				}
			  },
			  {
				"max_change": 2,
				"nature": {
				  "name": "lonely",
				  "url": "https://pokeapi.co/api/v2/nature/6/"
				}
			  },
			  {
				"max_change": 2,
				"nature": {
				  "name": "gentle",
				  "url": "https://pokeapi.co/api/v2/nature/9/"
				}
			  },
			  {
				"max_change": 2,
				"nature": {
				  "name": "hasty",
				  "url": "https://pokeapi.co/api/v2/nature/10/"
				}
			  },
			  {
				"max_change": 2,
				"nature": {
				  "name": "adamant",
				  "url": "https://pokeapi.co/api/v2/nature/11/"
				}
			  },
			  {
				"max_change": 2,
				"nature": {
				  "name": "jolly",
				  "url": "https://pokeapi.co/api/v2/nature/16/"
				}
			  },
			  {
				"max_change": 2,
				"nature": {
				  "name": "naughty",
				  "url": "https://pokeapi.co/api/v2/nature/17/"
				}
			  },
			  {
				"max_change": 1,
				"nature": {
				  "name": "quirky",
				  "url": "https://pokeapi.co/api/v2/nature/19/"
				}
			  },
			  {
				"max_change": 2,
				"nature": {
				  "name": "naive",
				  "url": "https://pokeapi.co/api/v2/nature/20/"
				}
			  },
			  {
				"max_change": 1,
				"nature": {
				  "name": "serious",
				  "url": "https://pokeapi.co/api/v2/nature/25/"
				}
			  }
			]
		  },
		  "id": 1,
		  "name": "speed",
		  "names": [
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Vitesse"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "Velocidad"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Speed"
			}
		  ]
		}
		"""#
	}
}
