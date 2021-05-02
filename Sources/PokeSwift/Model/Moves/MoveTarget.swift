//
//  MoveTarget.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class MoveTarget: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// The description of this resource listed in different languages.
	public let descriptions: [Description]?
	/// A list of moves that are directed at this target.
	public let moves: [NamedAPIResource<Move>]?
	/// The name of this resource listed in different languages.
	public let names: [Name]?
}

extension MoveTarget: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/move-target/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "descriptions": [
			{
			  "description": "Eine spezifische Fähigkeit.  Wie diese Fähigkeit genutzt wird hängt von den genutzten Fähigkeiten ab.",
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  }
			},
			{
			  "description": "One specific move.  How this move is chosen depends upon on the move being used.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  }
			}
		  ],
		  "id": 1,
		  "moves": [
			{
			  "name": "counter",
			  "url": "https://pokeapi.co/api/v2/move/68/"
			},
			{
			  "name": "curse",
			  "url": "https://pokeapi.co/api/v2/move/174/"
			},
			{
			  "name": "mirror-coat",
			  "url": "https://pokeapi.co/api/v2/move/243/"
			},
			{
			  "name": "metal-burst",
			  "url": "https://pokeapi.co/api/v2/move/368/"
			}
		  ],
		  "name": "specific-move",
		  "names": [
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "Spezifische Fähigkeit"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Specific move"
			}
		  ]
		}
		"""#
	}
}
