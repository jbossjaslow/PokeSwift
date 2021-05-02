//
//  ItemCategory.swift
//  
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class ItemCategory: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// A list of items that are part of this category.
	public let items: [NamedAPIResource<Item>]?
	/// The name of this item category in different languages.
	public let names: [Name]?
	/// The pocket items in this category would be put in.
	public let pocket: NamedAPIResource<ItemPocket>?
}

extension ItemCategory: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/item-category/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "id": 1,
		  "items": [
			{
			  "name": "guard-spec",
			  "url": "https://pokeapi.co/api/v2/item/55/"
			},
			{
			  "name": "dire-hit",
			  "url": "https://pokeapi.co/api/v2/item/56/"
			},
			{
			  "name": "x-attack",
			  "url": "https://pokeapi.co/api/v2/item/57/"
			},
			{
			  "name": "x-defense",
			  "url": "https://pokeapi.co/api/v2/item/58/"
			},
			{
			  "name": "x-speed",
			  "url": "https://pokeapi.co/api/v2/item/59/"
			},
			{
			  "name": "x-accuracy",
			  "url": "https://pokeapi.co/api/v2/item/60/"
			},
			{
			  "name": "x-sp-atk",
			  "url": "https://pokeapi.co/api/v2/item/61/"
			},
			{
			  "name": "x-sp-def",
			  "url": "https://pokeapi.co/api/v2/item/62/"
			}
		  ],
		  "name": "stat-boosts",
		  "names": [
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Stat boosts"
			}
		  ],
		  "pocket": {
			"name": "battle",
			"url": "https://pokeapi.co/api/v2/item-pocket/7/"
		  }
		}
		"""#
	}
}
