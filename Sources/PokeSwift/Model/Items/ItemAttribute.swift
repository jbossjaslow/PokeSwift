//
//  ItemAttribute.swift
//  
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class ItemAttribute: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// A list of items that have this attribute.
	public let items: [NamedAPIResource<Item>]?
	/// The name of this item in different languages.
	public let names: [Name]?
	/// The description of this item attribute listed in different languages.
	public let descriptions: [Description]?
}

extension ItemAttribute: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/item-attribute/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "descriptions": [
			{
			  "description": "Has a count in the bag",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  }
			}
		  ],
		  "id": 1,
		  "items": [
			{
			  "name": "master-ball",
			  "url": "https://pokeapi.co/api/v2/item/1/"
			},
			{
			  "name": "ultra-ball",
			  "url": "https://pokeapi.co/api/v2/item/2/"
			},
			{
			  "name": "great-ball",
			  "url": "https://pokeapi.co/api/v2/item/3/"
			},
			{
			  "name": "poke-ball",
			  "url": "https://pokeapi.co/api/v2/item/4/"
			},
			{
			  "name": "safari-ball",
			  "url": "https://pokeapi.co/api/v2/item/5/"
			},
			{
			  "name": "net-ball",
			  "url": "https://pokeapi.co/api/v2/item/6/"
			},
			{
			  "name": "dive-ball",
			  "url": "https://pokeapi.co/api/v2/item/7/"
			},
			{
			  "name": "nest-ball",
			  "url": "https://pokeapi.co/api/v2/item/8/"
			},
			{
			  "name": "repeat-ball",
			  "url": "https://pokeapi.co/api/v2/item/9/"
			},
			{
			  "name": "timer-ball",
			  "url": "https://pokeapi.co/api/v2/item/10/"
			},
			{
			  "name": "luxury-ball",
			  "url": "https://pokeapi.co/api/v2/item/11/"
			},
			{
			  "name": "premier-ball",
			  "url": "https://pokeapi.co/api/v2/item/12/"
			},
			{
			  "name": "dusk-ball",
			  "url": "https://pokeapi.co/api/v2/item/13/"
			},
			{
			  "name": "heal-ball",
			  "url": "https://pokeapi.co/api/v2/item/14/"
			},
			{
			  "name": "quick-ball",
			  "url": "https://pokeapi.co/api/v2/item/15/"
			},
			{
			  "name": "cherish-ball",
			  "url": "https://pokeapi.co/api/v2/item/16/"
			},
			{
			  "name": "potion",
			  "url": "https://pokeapi.co/api/v2/item/17/"
			},
			{
			  "name": "antidote",
			  "url": "https://pokeapi.co/api/v2/item/18/"
			},
			{
			  "name": "burn-heal",
			  "url": "https://pokeapi.co/api/v2/item/19/"
			},
			{
			  "name": "ice-heal",
			  "url": "https://pokeapi.co/api/v2/item/20/"
			},
			{
			  "name": "awakening",
			  "url": "https://pokeapi.co/api/v2/item/21/"
			},
			{
			  "name": "paralyze-heal",
			  "url": "https://pokeapi.co/api/v2/item/22/"
			},
			{
			  "name": "full-restore",
			  "url": "https://pokeapi.co/api/v2/item/23/"
			},
			{
			  "name": "max-potion",
			  "url": "https://pokeapi.co/api/v2/item/24/"
			},
			{
			  "name": "hyper-potion",
			  "url": "https://pokeapi.co/api/v2/item/25/"
			},
			{
			  "name": "super-potion",
			  "url": "https://pokeapi.co/api/v2/item/26/"
			},
			{
			  "name": "full-heal",
			  "url": "https://pokeapi.co/api/v2/item/27/"
			},
			{
			  "name": "revive",
			  "url": "https://pokeapi.co/api/v2/item/28/"
			},
			{
			  "name": "max-revive",
			  "url": "https://pokeapi.co/api/v2/item/29/"
			},
			{
			  "name": "fresh-water",
			  "url": "https://pokeapi.co/api/v2/item/30/"
			},
			{
			  "name": "soda-pop",
			  "url": "https://pokeapi.co/api/v2/item/31/"
			},
			{
			  "name": "lemonade",
			  "url": "https://pokeapi.co/api/v2/item/32/"
			},
			{
			  "name": "moomoo-milk",
			  "url": "https://pokeapi.co/api/v2/item/33/"
			},
			{
			  "name": "energy-powder",
			  "url": "https://pokeapi.co/api/v2/item/34/"
			},
			{
			  "name": "energy-root",
			  "url": "https://pokeapi.co/api/v2/item/35/"
			},
			{
			  "name": "heal-powder",
			  "url": "https://pokeapi.co/api/v2/item/36/"
			},
			{
			  "name": "revival-herb",
			  "url": "https://pokeapi.co/api/v2/item/37/"
			},
			{
			  "name": "ether",
			  "url": "https://pokeapi.co/api/v2/item/38/"
			},
			{
			  "name": "max-ether",
			  "url": "https://pokeapi.co/api/v2/item/39/"
			},
			{
			  "name": "elixir",
			  "url": "https://pokeapi.co/api/v2/item/40/"
			},
			{
			  "name": "max-elixir",
			  "url": "https://pokeapi.co/api/v2/item/41/"
			},
			{
			  "name": "lava-cookie",
			  "url": "https://pokeapi.co/api/v2/item/42/"
			},
			{
			  "name": "berry-juice",
			  "url": "https://pokeapi.co/api/v2/item/43/"
			},
			{
			  "name": "sacred-ash",
			  "url": "https://pokeapi.co/api/v2/item/44/"
			},
			{
			  "name": "hp-up",
			  "url": "https://pokeapi.co/api/v2/item/45/"
			},
			{
			  "name": "protein",
			  "url": "https://pokeapi.co/api/v2/item/46/"
			},
			{
			  "name": "iron",
			  "url": "https://pokeapi.co/api/v2/item/47/"
			},
			{
			  "name": "carbos",
			  "url": "https://pokeapi.co/api/v2/item/48/"
			},
			{
			  "name": "calcium",
			  "url": "https://pokeapi.co/api/v2/item/49/"
			},
			{
			  "name": "rare-candy",
			  "url": "https://pokeapi.co/api/v2/item/50/"
			},
			{
			  "name": "pp-up",
			  "url": "https://pokeapi.co/api/v2/item/51/"
			},
			{
			  "name": "zinc",
			  "url": "https://pokeapi.co/api/v2/item/52/"
			},
			{
			  "name": "pp-max",
			  "url": "https://pokeapi.co/api/v2/item/53/"
			},
			{
			  "name": "old-gateau",
			  "url": "https://pokeapi.co/api/v2/item/54/"
			},
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
			},
			{
			  "name": "poke-doll",
			  "url": "https://pokeapi.co/api/v2/item/63/"
			},
			{
			  "name": "fluffy-tail",
			  "url": "https://pokeapi.co/api/v2/item/64/"
			},
			{
			  "name": "blue-flute",
			  "url": "https://pokeapi.co/api/v2/item/65/"
			},
			{
			  "name": "yellow-flute",
			  "url": "https://pokeapi.co/api/v2/item/66/"
			},
			{
			  "name": "red-flute",
			  "url": "https://pokeapi.co/api/v2/item/67/"
			},
			{
			  "name": "black-flute",
			  "url": "https://pokeapi.co/api/v2/item/68/"
			},
			{
			  "name": "white-flute",
			  "url": "https://pokeapi.co/api/v2/item/69/"
			},
			{
			  "name": "shoal-salt",
			  "url": "https://pokeapi.co/api/v2/item/70/"
			},
			{
			  "name": "shoal-shell",
			  "url": "https://pokeapi.co/api/v2/item/71/"
			}
		  ],
		  "name": "countable",
		  "names": [
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Countable"
			}
		  ]
		}
		"""#
	}
}
