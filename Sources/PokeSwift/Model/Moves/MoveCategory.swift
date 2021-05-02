//
//  MoveCategory.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class MoveCategory: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// A list of moves that fall into this category.
	public let moves: [NamedAPIResource<Move>]
	/// The description of this resource listed in different languages.
	public let descriptions: [Description]
}

extension MoveCategory: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/move-category/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "descriptions": [
			{
			  "description": "No damage; inflicts status ailment",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  }
			}
		  ],
		  "id": 1,
		  "moves": [
			{
			  "name": "sing",
			  "url": "https://pokeapi.co/api/v2/move/47/"
			},
			{
			  "name": "supersonic",
			  "url": "https://pokeapi.co/api/v2/move/48/"
			},
			{
			  "name": "leech-seed",
			  "url": "https://pokeapi.co/api/v2/move/73/"
			},
			{
			  "name": "poison-powder",
			  "url": "https://pokeapi.co/api/v2/move/77/"
			},
			{
			  "name": "stun-spore",
			  "url": "https://pokeapi.co/api/v2/move/78/"
			},
			{
			  "name": "sleep-powder",
			  "url": "https://pokeapi.co/api/v2/move/79/"
			},
			{
			  "name": "thunder-wave",
			  "url": "https://pokeapi.co/api/v2/move/86/"
			},
			{
			  "name": "toxic",
			  "url": "https://pokeapi.co/api/v2/move/92/"
			},
			{
			  "name": "hypnosis",
			  "url": "https://pokeapi.co/api/v2/move/95/"
			},
			{
			  "name": "confuse-ray",
			  "url": "https://pokeapi.co/api/v2/move/109/"
			},
			{
			  "name": "glare",
			  "url": "https://pokeapi.co/api/v2/move/137/"
			},
			{
			  "name": "poison-gas",
			  "url": "https://pokeapi.co/api/v2/move/139/"
			},
			{
			  "name": "lovely-kiss",
			  "url": "https://pokeapi.co/api/v2/move/142/"
			},
			{
			  "name": "spore",
			  "url": "https://pokeapi.co/api/v2/move/147/"
			},
			{
			  "name": "nightmare",
			  "url": "https://pokeapi.co/api/v2/move/171/"
			},
			{
			  "name": "sweet-kiss",
			  "url": "https://pokeapi.co/api/v2/move/186/"
			},
			{
			  "name": "foresight",
			  "url": "https://pokeapi.co/api/v2/move/193/"
			},
			{
			  "name": "perish-song",
			  "url": "https://pokeapi.co/api/v2/move/195/"
			},
			{
			  "name": "attract",
			  "url": "https://pokeapi.co/api/v2/move/213/"
			},
			{
			  "name": "torment",
			  "url": "https://pokeapi.co/api/v2/move/259/"
			},
			{
			  "name": "will-o-wisp",
			  "url": "https://pokeapi.co/api/v2/move/261/"
			},
			{
			  "name": "ingrain",
			  "url": "https://pokeapi.co/api/v2/move/275/"
			},
			{
			  "name": "yawn",
			  "url": "https://pokeapi.co/api/v2/move/281/"
			},
			{
			  "name": "teeter-dance",
			  "url": "https://pokeapi.co/api/v2/move/298/"
			},
			{
			  "name": "odor-sleuth",
			  "url": "https://pokeapi.co/api/v2/move/316/"
			},
			{
			  "name": "grass-whistle",
			  "url": "https://pokeapi.co/api/v2/move/320/"
			},
			{
			  "name": "miracle-eye",
			  "url": "https://pokeapi.co/api/v2/move/357/"
			},
			{
			  "name": "embargo",
			  "url": "https://pokeapi.co/api/v2/move/373/"
			},
			{
			  "name": "heal-block",
			  "url": "https://pokeapi.co/api/v2/move/377/"
			},
			{
			  "name": "dark-void",
			  "url": "https://pokeapi.co/api/v2/move/464/"
			},
			{
			  "name": "telekinesis",
			  "url": "https://pokeapi.co/api/v2/move/477/"
			}
		  ],
		  "name": "ailment"
		}
		"""#
	}
}
