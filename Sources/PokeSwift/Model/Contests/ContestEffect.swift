//
//  ContestEffect.swift
//  
//
//  Created by Josh Jaslow on 4/7/21.
//

import Foundation

public class ContestEffect: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The base number of hearts the user of this move gets.
	public let appeal: Int
	/// The base number of hearts the user's opponent loses.
	public let jam: Int
	/// The result of this contest effect listed in different languages.
	public let effectEntries: [Effect]
	/// The flavor text of this contest effect listed in different languages.
	public let flavorTextEntries: [FlavorText]
}

extension ContestEffect: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/contest-effect/"
	}
	
	public static var testResponse: String {
		#"""
		{
			"appeal": 4,
			"effect_entries": [
				{
					"effect": "Gives a high number of appeal points wth no other effects.",
					"language": {
						"name": "en",
						"url": "https://pokeapi.co/api/v2/language/9/"
					}
				}
			],
			"flavor_text_entries": [
				{
					"flavor_text": "A highly appealing move.",
					"language": {
						"name": "en",
						"url": "https://pokeapi.co/api/v2/language/9/"
					}
				}
			],
			"id": 1,
			"jam": 0
		}
		"""#
	}
}
