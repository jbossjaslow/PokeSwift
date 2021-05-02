//
//  Stat.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class Stat: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// ID the games use for this stat.
	public let gameIndex: Int?
	/// Whether this stat only exists within a battle.
	public let isBattleOnly: Bool?
	/// A detail of moves which affect this stat positively or negatively.
	public let affectingMoves: MoveStatAffectSets?
	/// A detail of natures which affect this stat positively or negatively.
	public let affectingNatures: NatureStatAffectSets?
	/// A list of characteristics that are set on a Pokémon when its highest base stat is this stat.
	public let characteristics: [APIResource<Characteristic>]?
	/// The class of damage this stat is directly related to.
	public let moveDamageClass: NamedAPIResource<MoveDamageClass>?
	/// The name of this resource listed in different languages.
	public let names: [Name]?
}

public class MoveStatAffect: BaseResourceProtocol {
	/// The maximum amount of change to the referenced stat.
	public let change: Int?
	/// The move causing the change.
	public let move: NamedAPIResource<Move>?
}

public class MoveStatAffectSets: BaseResourceProtocol {
	/// A list of moves and how they change the referenced stat.
	public let increase: [MoveStatAffect]?
	/// A list of moves and how they change the referenced stat.
	public let decrease: [MoveStatAffect]?
}

public class NatureStatAffectSets: BaseResourceProtocol {
	/// A list of natures and how they change the referenced stat.
	public let increase: [NamedAPIResource<Nature>]?
	/// A list of natures and how they change the referenced stat.
	public let decrease: [NamedAPIResource<Nature>]?
}

extension Stat: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/stat/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "affecting_moves": {
			"decrease": [],
			"increase": [
			  {
				"change": 1,
				"move": {
				  "name": "ancient-power",
				  "url": "https://pokeapi.co/api/v2/move/246/"
				}
			  },
			  {
				"change": 1,
				"move": {
				  "name": "silver-wind",
				  "url": "https://pokeapi.co/api/v2/move/318/"
				}
			  },
			  {
				"change": 1,
				"move": {
				  "name": "ominous-wind",
				  "url": "https://pokeapi.co/api/v2/move/466/"
				}
			  }
			]
		  },
		  "affecting_natures": {
			"decrease": [],
			"increase": []
		  },
		  "characteristics": [
			{
			  "url": "https://pokeapi.co/api/v2/characteristic/1/"
			},
			{
			  "url": "https://pokeapi.co/api/v2/characteristic/7/"
			},
			{
			  "url": "https://pokeapi.co/api/v2/characteristic/13/"
			},
			{
			  "url": "https://pokeapi.co/api/v2/characteristic/19/"
			},
			{
			  "url": "https://pokeapi.co/api/v2/characteristic/25/"
			}
		  ],
		  "game_index": 1,
		  "id": 1,
		  "is_battle_only": false,
		  "move_damage_class": null,
		  "name": "hp",
		  "names": [
			{
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  },
			  "name": "HP"
			},
			{
			  "language": {
				"name": "ko",
				"url": "https://pokeapi.co/api/v2/language/3/"
			  },
			  "name": "HP"
			},
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "PV"
			},
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "KP"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "PS"
			},
			{
			  "language": {
				"name": "it",
				"url": "https://pokeapi.co/api/v2/language/8/"
			  },
			  "name": "PS"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "HP"
			}
		  ]
		}
		"""#
	}
}
