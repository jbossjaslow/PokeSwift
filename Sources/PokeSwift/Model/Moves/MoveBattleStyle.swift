//
//  MoveBattleStyle.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class MoveBattleStyle: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// The name of this resource listed in different languages.
	public let names: [Name]
}

extension MoveBattleStyle: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/move-battle-style/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "id": 1,
		  "name": "attack",
		  "names": [
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Attaque"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Attack"
			}
		  ]
		}
		"""#
	}
}
