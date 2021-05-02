//
//  ItemPocket.swift
//  
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class ItemPocket: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// A list of item categories that are relevant to this item pocket.
	public let categories: [NamedAPIResource<ItemCategory>]?
	/// The name of this item in different languages.
	public let names: [Name]?
}

extension ItemPocket: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/item-pocket/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "categories": [
			{
			  "name": "collectibles",
			  "url": "https://pokeapi.co/api/v2/item-category/9/"
			},
			{
			  "name": "evolution",
			  "url": "https://pokeapi.co/api/v2/item-category/10/"
			},
			{
			  "name": "spelunking",
			  "url": "https://pokeapi.co/api/v2/item-category/11/"
			},
			{
			  "name": "held-items",
			  "url": "https://pokeapi.co/api/v2/item-category/12/"
			},
			{
			  "name": "choice",
			  "url": "https://pokeapi.co/api/v2/item-category/13/"
			},
			{
			  "name": "effort-training",
			  "url": "https://pokeapi.co/api/v2/item-category/14/"
			},
			{
			  "name": "bad-held-items",
			  "url": "https://pokeapi.co/api/v2/item-category/15/"
			},
			{
			  "name": "training",
			  "url": "https://pokeapi.co/api/v2/item-category/16/"
			},
			{
			  "name": "plates",
			  "url": "https://pokeapi.co/api/v2/item-category/17/"
			},
			{
			  "name": "species-specific",
			  "url": "https://pokeapi.co/api/v2/item-category/18/"
			},
			{
			  "name": "type-enhancement",
			  "url": "https://pokeapi.co/api/v2/item-category/19/"
			},
			{
			  "name": "loot",
			  "url": "https://pokeapi.co/api/v2/item-category/24/"
			},
			{
			  "name": "mulch",
			  "url": "https://pokeapi.co/api/v2/item-category/32/"
			},
			{
			  "name": "dex-completion",
			  "url": "https://pokeapi.co/api/v2/item-category/35/"
			},
			{
			  "name": "scarves",
			  "url": "https://pokeapi.co/api/v2/item-category/36/"
			},
			{
			  "name": "jewels",
			  "url": "https://pokeapi.co/api/v2/item-category/42/"
			},
			{
			  "name": "mega-stones",
			  "url": "https://pokeapi.co/api/v2/item-category/44/"
			},
			{
			  "name": "memories",
			  "url": "https://pokeapi.co/api/v2/item-category/45/"
			}
		  ],
		  "id": 1,
		  "name": "misc",
		  "names": [
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Objets"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "Objetos"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Items"
			}
		  ]
		}
		"""#
	}
}
