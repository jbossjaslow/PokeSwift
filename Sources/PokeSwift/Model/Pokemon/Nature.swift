//
//  Nature.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class Nature: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// The stat decreased by 10% in Pokémon with this nature.
	public let decreasedStat: NamedAPIResource<Stat>?
	/// The stat increased by 10% in Pokémon with this nature.
	public let increasedStat: NamedAPIResource<Stat>?
	/// The flavor hated by Pokémon with this nature.
	public let hatesFlavor: NamedAPIResource<BerryFlavor>?
	/// The flavor liked by Pokémon with this nature.
	public let likesFlavor: NamedAPIResource<BerryFlavor>?
	/// A list of Pokéathlon stats this nature effects and how much it effects them.
	public let pokeathlonStatChanges: [NatureStatChange]
	/// A list of battle styles and how likely a Pokémon with this nature is to use them in the Battle Palace or Battle Tent.
	public let moveBattleStylePreferences: [MoveBattleStylePreference]
	/// The name of this resource listed in different languages.
	public let names: [Name]
}

public class MoveBattleStylePreference: BaseResourceProtocol {
	/// Chance of using the move, in percent, if HP is under one half.
	public let lowHpPreference: Int
	/// Chance of using the move, in percent, if HP is over one half.
	public let highHpPreference: Int
	/// The move battle style.
	public let moveBattleStyle: NamedAPIResource<MoveBattleStyle>
}

public class NatureStatChange: BaseResourceProtocol {
	/// The amount of change.
	public let maxChange: Int
	/// The stat being affected.
	public let pokeathlonStat: NamedAPIResource<PokeathlonStat>
}

extension Nature: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/nature/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "decreased_stat": null,
		  "hates_flavor": null,
		  "id": 1,
		  "increased_stat": null,
		  "likes_flavor": null,
		  "move_battle_style_preferences": [
			{
			  "high_hp_preference": 61,
			  "low_hp_preference": 61,
			  "move_battle_style": {
				"name": "attack",
				"url": "https://pokeapi.co/api/v2/move-battle-style/1/"
			  }
			},
			{
			  "high_hp_preference": 7,
			  "low_hp_preference": 7,
			  "move_battle_style": {
				"name": "defense",
				"url": "https://pokeapi.co/api/v2/move-battle-style/2/"
			  }
			},
			{
			  "high_hp_preference": 32,
			  "low_hp_preference": 32,
			  "move_battle_style": {
				"name": "support",
				"url": "https://pokeapi.co/api/v2/move-battle-style/3/"
			  }
			}
		  ],
		  "name": "hardy",
		  "names": [
			{
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  },
			  "name": "がんばりや"
			},
			{
			  "language": {
				"name": "ko",
				"url": "https://pokeapi.co/api/v2/language/3/"
			  },
			  "name": "노력"
			},
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Hardi"
			},
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "Robust"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "Fuerte"
			},
			{
			  "language": {
				"name": "it",
				"url": "https://pokeapi.co/api/v2/language/8/"
			  },
			  "name": "Ardita"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Hardy"
			}
		  ],
		  "pokeathlon_stat_changes": [
			{
			  "max_change": -1,
			  "pokeathlon_stat": {
				"name": "speed",
				"url": "https://pokeapi.co/api/v2/pokeathlon-stat/1/"
			  }
			},
			{
			  "max_change": 1,
			  "pokeathlon_stat": {
				"name": "power",
				"url": "https://pokeapi.co/api/v2/pokeathlon-stat/2/"
			  }
			}
		  ]
		}
		"""#
	}
}
