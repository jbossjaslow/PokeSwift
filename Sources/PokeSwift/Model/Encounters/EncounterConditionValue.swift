//
//  EncounterConditionValue.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class EncounterConditionValue: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// The condition this encounter condition value pertains to.
	public let condition: NamedAPIResource<EncounterCondition>?
	/// The name of this resource listed in different languages.
	public let names: [Name]?
}

extension EncounterConditionValue: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/encounter-condition-value/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "condition": {
			"name": "swarm",
			"url": "https://pokeapi.co/api/v2/encounter-condition/1/"
		  },
		  "id": 1,
		  "name": "swarm-yes",
		  "names": [
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "Während eines Schwarms"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "During a swarm"
			}
		  ]
		}
		"""#
	}
}
