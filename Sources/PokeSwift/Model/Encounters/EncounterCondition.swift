//
//  EncounterCondition.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class EncounterCondition: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// The name of this resource listed in different languages.
	public let names: [Name]
	/// A list of possible values for this encounter condition.
	public let values: [NamedAPIResource<EncounterConditionValue>]
}

extension EncounterCondition: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/encounter-condition/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "id": 1,
		  "name": "swarm",
		  "names": [
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Essaim"
			},
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "Schwarm"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Swarm"
			}
		  ],
		  "values": [
			{
			  "name": "swarm-yes",
			  "url": "https://pokeapi.co/api/v2/encounter-condition-value/1/"
			},
			{
			  "name": "swarm-no",
			  "url": "https://pokeapi.co/api/v2/encounter-condition-value/2/"
			}
		  ]
		}
		"""#
	}
}
