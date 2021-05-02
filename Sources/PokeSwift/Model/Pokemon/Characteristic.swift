//
//  Characteristic.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class Characteristic: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The remainder of the highest stat/IV divided by 5.
	public let geneModulo: Int
	/// The possible values of the highest stat that would result in a Pokémon recieving this characteristic when divided by 5.
	public let possibleValues: [Int]
}

extension Characteristic: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/characteristic/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "descriptions": [
			{
			  "description": "Adore manger",
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  }
			},
			{
			  "description": "Le encanta comer",
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  }
			},
			{
			  "description": "Loves to eat",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  }
			}
		  ],
		  "gene_modulo": 0,
		  "highest_stat": {
			"name": "hp",
			"url": "https://pokeapi.co/api/v2/stat/1/"
		  },
		  "id": 1,
		  "possible_values": [
			0,
			5,
			10,
			15,
			20,
			25,
			30
		  ]
		}
		"""#
	}
}
