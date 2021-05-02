//
//  Item.swift
//  
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class Item: BaseResourceProtocol {
	// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// The price of this item in stores.
	public let cost: Int
	/// The power of the move Fling when used with this item.
	public let flingPower: Int?
	/// The effect of the move Fling when used with this item.
	public let flingEffect: NamedAPIResource<ItemFlingEffect>?
	/// A list of attributes this item has.
	public let attributes: [NamedAPIResource<ItemAttribute>]
	/// The category of items this item falls into.
	public let category: NamedAPIResource<ItemCategory>
	/// The effect of this ability listed in different languages.
	public let effectEntries: [VerboseEffect]
	/// The flavor text of this ability listed in different languages.
	public let flavorTextEntries: [VersionGroupFlavorText]
	/// A list of game indices relevent to this item by generation.
	public let gameIndices: [GenerationGameIndex]
	/// The name of this item listed in different languages.
	public let names: [Name]
	/// A set of sprites used to depict this item in the game.
	public let sprites: ItemSprites
	/// A list of Pokémon that might be found in the wild holding this item.
	public let heldByPokemon: [ItemHolderPokemon]
	/// An evolution chain this item requires to produce a bay during mating.
	public let babyTriggerFor: APIResource<EvolutionChain>?
	/// A list of the machines related to this item.
	public let machines: [MachineVersionDetail]
}

public class ItemHolderPokemon: BaseResourceProtocol {
	/// The Pokémon that holds this item.
	public let pokemon: NamedAPIResource<Pokemon>
	/// The details for the version that this item is held in by the Pokemon.
	public let versionDetails: [ItemHolderPokemonVersionDetail]
}

public class ItemHolderPokemonVersionDetail: BaseResourceProtocol {
	/// How often this Pokémon holds this item in this version.
	public let rarity: Int
	/// The version that this item is held in by the Pokémon.
	public let version: NamedAPIResource<Version>
}

public class ItemSprites: BaseResourceProtocol {
	enum CodingKeys: String, CodingKey {
		case defaultDepiction = "default"
	}
	
	/// The default depiction of this item
	public let defaultDepiction: String
	
	required public init(from decoder: Decoder) throws {
		let depiction = try decoder.container(keyedBy: CodingKeys.self)
		defaultDepiction = try depiction.decode(String.self, forKey: .defaultDepiction)
	}
}

extension Item: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/item/"
	}
	
	public static var testResponse: String {
		#"""
		{
			"attributes": [],
			"baby_trigger_for": null,
			"category": {
				"name": "standard-balls",
				"url": "https://pokeapi.co/api/v2/item-category/34/"
			},
			"cost": 0,
			"effect_entries": [
				{
					"effect": "Used in battle\n: Catches a wild Pokémon without fail.\n\n If used in a trainer battle, nothing happens and the ball is lost.",
					"language": {
						"name": "en",
						"url": "https://pokeapi.co/api/v2/language/9/"
					},
					"short_effect": "Catches a wild Pokémon every time."
				}
			],
			"flavor_text_entries": [],
			"fling_effect": null,
			"fling_power": null,
			"game_indices": [],
			"held_by_pokemon": [],
			"id": 1,
			"machines": [],
			"name": "master-ball",
			"names": [],
			"sprites": {
				"default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/master-ball.png"
			}
		}
		"""#
	}
}
