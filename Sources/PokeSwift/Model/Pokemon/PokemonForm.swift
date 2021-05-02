//
//  PokemonForm.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class PokemonForm: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// The order in which forms should be sorted within all forms. Multiple forms may have equal order, in which case they should fall back on sorting by name.
	public let order: Int?
	/// The order in which forms should be sorted within a species' forms.
	public let formOrder: Int?
	/// True for exactly one form used as the default for each Pokémon.
	public let isDefault: Bool?
	/// Whether or not this form can only happen during battle.
	public let isBattleOnly: Bool?
	/// Whether or not this form requires mega evolution.
	public let isMega: Bool?
	/// The name of this form.
	public let formName: String?
	/// The Pokémon that can take on this form.
	public let pokemon: NamedAPIResource<Pokemon>?
	/// A set of sprites used to depict this Pokémon form in the game.
	public let sprites: PokemonFormSprites?
	/// The version group this Pokémon form was introduced in.
	public let versionGroup: NamedAPIResource<VersionGroup>?
	/// The form specific full name of this Pokémon form, or empty if the form does not have a specific name.
	public let names: [Name]?
	/// The form specific form name of this Pokémon form, or empty if the form does not have a specific name.
	public let formNames: [Name]?
}

public class PokemonFormSprites: BaseResourceProtocol {
	/// The default depiction of this Pokémon form from the front in battle.
	public let frontDefault: String?
	/// The shiny depiction of this Pokémon form from the back in battle.
	public let frontShiny: String?
	/// The default depiction of this Pokémon form from the front in battle.
	public let backDefault: String?
	/// The shiny depiction of this Pokémon form from the back in battle.
	public let backShiny: String?
}

extension PokemonForm: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/pokemon-form/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "form_name": "",
		  "form_names": [],
		  "form_order": 1,
		  "id": 1,
		  "is_battle_only": false,
		  "is_default": true,
		  "is_mega": false,
		  "name": "bulbasaur",
		  "names": [],
		  "order": 1,
		  "pokemon": {
			"name": "bulbasaur",
			"url": "https://pokeapi.co/api/v2/pokemon/1/"
		  },
		  "sprites": {
			"back_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/1.png",
			"back_female": null,
			"back_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/1.png",
			"back_shiny_female": null,
			"front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png",
			"front_female": null,
			"front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/1.png",
			"front_shiny_female": null
		  },
		  "types": [
			{
			  "slot": 1,
			  "type": {
				"name": "grass",
				"url": "https://pokeapi.co/api/v2/type/12/"
			  }
			},
			{
			  "slot": 2,
			  "type": {
				"name": "poison",
				"url": "https://pokeapi.co/api/v2/type/4/"
			  }
			}
		  ],
		  "version_group": {
			"name": "red-blue",
			"url": "https://pokeapi.co/api/v2/version-group/1/"
		  }
		}
		"""#
	}
}
