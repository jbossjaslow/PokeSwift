//
//  MoveDamageClass.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class MoveDamageClass: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// The description of this resource listed in different languages.
	public let descriptions: [Description]?
	/// A list of moves that fall into this damage class.
	public let moves: [NamedAPIResource<Move>]?
	/// The name of this resource listed in different languages.
	public let names: [Name]?
}

extension MoveDamageClass: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/move-damage-class/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "descriptions": [
			{
			  "description": "ダメージない",
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  }
			},
			{
			  "description": "Aucun dégât",
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  }
			},
			{
			  "description": "Kein Schaden",
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  }
			},
			{
			  "description": "Sin Daño",
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  }
			},
			{
			  "description": "No damage",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  }
			}
		  ],
		  "id": 1,
		  "moves": [
			{
			  "name": "swords-dance",
			  "url": "https://pokeapi.co/api/v2/move/14/"
			},
			{
			  "name": "whirlwind",
			  "url": "https://pokeapi.co/api/v2/move/18/"
			},
			{
			  "name": "sand-attack",
			  "url": "https://pokeapi.co/api/v2/move/28/"
			},
			{
			  "name": "tail-whip",
			  "url": "https://pokeapi.co/api/v2/move/39/"
			},
			{
			  "name": "leer",
			  "url": "https://pokeapi.co/api/v2/move/43/"
			}
		  ],
		  "name": "status",
		  "names": [
			{
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  },
			  "name": "へんか"
			},
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "statut"
			},
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "status"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "estado"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "status"
			}
		  ]
		}
		"""#
	}
}
