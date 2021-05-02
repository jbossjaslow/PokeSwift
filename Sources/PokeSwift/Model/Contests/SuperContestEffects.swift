//
//  SuperContestEffects.swift
//  
//
//  Created by Josh Jaslow on 4/7/21.
//

import Foundation

public class SuperContestEffect: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The base number of hearts the user of this move gets.
	public let appeal: Int?
	/// The flavor text of this contest effect listed in different languages.
	public let flavorTextEntries: [FlavorText]?
	/// A list of moves that have the effect when used in super contests.
	public let moves: [NamedAPIResource<Move>]?
}

extension SuperContestEffect: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/super-contest-effect/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "appeal": 2,
		  "flavor_text_entries": [
			{
			  "flavor_text": "Enables the user to perform first in the next turn.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  }
			}
		  ],
		  "id": 1,
		  "moves": [
			{
			  "name": "agility",
			  "url": "https://pokeapi.co/api/v2/move/97/"
			},
			{
			  "name": "quick-attack",
			  "url": "https://pokeapi.co/api/v2/move/98/"
			},
			{
			  "name": "teleport",
			  "url": "https://pokeapi.co/api/v2/move/100/"
			},
			{
			  "name": "double-team",
			  "url": "https://pokeapi.co/api/v2/move/104/"
			},
			{
			  "name": "cotton-spore",
			  "url": "https://pokeapi.co/api/v2/move/178/"
			},
			{
			  "name": "mach-punch",
			  "url": "https://pokeapi.co/api/v2/move/183/"
			},
			{
			  "name": "extreme-speed",
			  "url": "https://pokeapi.co/api/v2/move/245/"
			},
			{
			  "name": "tailwind",
			  "url": "https://pokeapi.co/api/v2/move/366/"
			},
			{
			  "name": "me-first",
			  "url": "https://pokeapi.co/api/v2/move/382/"
			},
			{
			  "name": "sucker-punch",
			  "url": "https://pokeapi.co/api/v2/move/389/"
			},
			{
			  "name": "rock-polish",
			  "url": "https://pokeapi.co/api/v2/move/397/"
			},
			{
			  "name": "vacuum-wave",
			  "url": "https://pokeapi.co/api/v2/move/410/"
			},
			{
			  "name": "bullet-punch",
			  "url": "https://pokeapi.co/api/v2/move/418/"
			},
			{
			  "name": "ice-shard",
			  "url": "https://pokeapi.co/api/v2/move/420/"
			},
			{
			  "name": "shadow-sneak",
			  "url": "https://pokeapi.co/api/v2/move/425/"
			},
			{
			  "name": "aqua-jet",
			  "url": "https://pokeapi.co/api/v2/move/453/"
			}
		  ]
		}
		"""#
	}
}
