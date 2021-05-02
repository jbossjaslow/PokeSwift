//
//  EncounterMethod.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class EncounterMethod: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// A good value for sorting.
	public let order: Int
	/// The name of this resource listed in different languages.
	public let names: [Name]
}

extension EncounterMethod: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/encounter-method/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "id": 1,
		  "name": "walk",
		  "names": [
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "Im hohen Gras oder in einer Höhle laufen"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Walking in tall grass or a cave"
			}
		  ],
		  "order": 1
		}
		"""#
	}
}
