//
//  Type.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class Type: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// A detail of how effective this type is toward others and vice versa.
	public let damageRelations: TypeRelations
	/// A list of game indices relevent to this item by generation.
	public let gameIndices: [GenerationGameIndex]
	/// The generation this type was introduced in.
	public let generation: NamedAPIResource<Generation>
	/// The class of damage inflicted by this type.
	public let moveDamageClass: NamedAPIResource<MoveDamageClass>
	/// The name of this resource listed in different languages.
	public let names: [Name]
	/// A list of details of Pokémon that have this type.
	public let pokemon: [TypePokemon]
	/// A list of moves that have this type.
	public let moves: [NamedAPIResource<Move>]
}

public class TypePokemon: BaseResourceProtocol {
	/// The order the Pokemon's types are listed in.
	public let slot: Int
	/// The Pokemon that has the referenced type.
	public let pokemon: NamedAPIResource<Pokemon>
}

public class TypeRelations: BaseResourceProtocol {
	/// A list of types this type has no effect on.
	public let noDamageTo: [NamedAPIResource<Type>]
	/// A list of types this type is not very effect against.
	public let halfDamageTo: [NamedAPIResource<Type>]
	/// A list of types this type is very effect against.
	public let doubleDamageTo: [NamedAPIResource<Type>]
	/// A list of types that have no effect on this type.
	public let noDamageFrom: [NamedAPIResource<Type>]
	/// A list of types that are not very effective against this type.
	public let halfDamageFrom: [NamedAPIResource<Type>]
	/// A list of types that are very effective against this type.
	public let doubleDamageFrom: [NamedAPIResource<Type>]
}

extension Type: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/type/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "damage_relations": {
			"double_damage_from": [
			  {
				"name": "fighting",
				"url": "https://pokeapi.co/api/v2/type/2/"
			  }
			],
			"double_damage_to": [],
			"half_damage_from": [],
			"half_damage_to": [
			  {
				"name": "rock",
				"url": "https://pokeapi.co/api/v2/type/6/"
			  },
			  {
				"name": "steel",
				"url": "https://pokeapi.co/api/v2/type/9/"
			  }
			],
			"no_damage_from": [
			  {
				"name": "ghost",
				"url": "https://pokeapi.co/api/v2/type/8/"
			  }
			],
			"no_damage_to": [
			  {
				"name": "ghost",
				"url": "https://pokeapi.co/api/v2/type/8/"
			  }
			]
		  },
		  "game_indices": [
			{
			  "game_index": 0,
			  "generation": {
				"name": "generation-i",
				"url": "https://pokeapi.co/api/v2/generation/1/"
			  }
			},
			{
			  "game_index": 0,
			  "generation": {
				"name": "generation-ii",
				"url": "https://pokeapi.co/api/v2/generation/2/"
			  }
			},
			{
			  "game_index": 0,
			  "generation": {
				"name": "generation-iii",
				"url": "https://pokeapi.co/api/v2/generation/3/"
			  }
			},
			{
			  "game_index": 0,
			  "generation": {
				"name": "generation-iv",
				"url": "https://pokeapi.co/api/v2/generation/4/"
			  }
			},
			{
			  "game_index": 0,
			  "generation": {
				"name": "generation-v",
				"url": "https://pokeapi.co/api/v2/generation/5/"
			  }
			},
			{
			  "game_index": 0,
			  "generation": {
				"name": "generation-vi",
				"url": "https://pokeapi.co/api/v2/generation/6/"
			  }
			}
		  ],
		  "generation": {
			"name": "generation-i",
			"url": "https://pokeapi.co/api/v2/generation/1/"
		  },
		  "id": 1,
		  "move_damage_class": {
			"name": "physical",
			"url": "https://pokeapi.co/api/v2/move-damage-class/2/"
		  },
		  "moves": [
			{
			  "name": "pound",
			  "url": "https://pokeapi.co/api/v2/move/1/"
			},
			{
			  "name": "double-slap",
			  "url": "https://pokeapi.co/api/v2/move/3/"
			},
			{
			  "name": "comet-punch",
			  "url": "https://pokeapi.co/api/v2/move/4/"
			}
		  ],
		  "name": "normal",
		  "names": [
			{
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  },
			  "name": "ノーマル"
			},
			{
			  "language": {
				"name": "ko",
				"url": "https://pokeapi.co/api/v2/language/3/"
			  },
			  "name": "노말"
			},
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Normal"
			},
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "Normal"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "Normal"
			},
			{
			  "language": {
				"name": "it",
				"url": "https://pokeapi.co/api/v2/language/8/"
			  },
			  "name": "Normale"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Normal"
			}
		  ],
		  "pokemon": [
			{
			  "pokemon": {
				"name": "pidgey",
				"url": "https://pokeapi.co/api/v2/pokemon/16/"
			  },
			  "slot": 1
			},
			{
			  "pokemon": {
				"name": "pidgeotto",
				"url": "https://pokeapi.co/api/v2/pokemon/17/"
			  },
			  "slot": 1
			},
			{
			  "pokemon": {
				"name": "pidgeot",
				"url": "https://pokeapi.co/api/v2/pokemon/18/"
			  },
			  "slot": 1
			}
		  ]
		}
		"""#
	}
}
