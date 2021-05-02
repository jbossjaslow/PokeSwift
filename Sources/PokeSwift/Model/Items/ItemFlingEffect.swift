//
//  ItemFlingEffect.swift
//  
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class ItemFlingEffect: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// The result of this fling effect listed in different languages.
	public let effectEntries: [Effect]
	/// A list of items that hanve this fling effect.
	public let items: [NamedAPIResource<Item>]
}

extension ItemFlingEffect: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/item-fling-effect/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "effect_entries": [
			{
			  "effect": "Badly poisons the target.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  }
			}
		  ],
		  "id": 1,
		  "items": [
			{
			  "name": "toxic-orb",
			  "url": "https://pokeapi.co/api/v2/item/249/"
			}
		  ],
		  "name": "badly-poison"
		}
		"""#
	}
}
