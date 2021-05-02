//
//  MoveAilment.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class MoveAilment: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// A list of moves that cause this ailment.
	public let moves: [NamedAPIResource<Move>]
	/// The name of this resource listed in different languages.
	public let names: [Name]
}

extension MoveAilment: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/move-ailment/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "id": 1,
		  "moves": [
			{
			  "name": "thunder-punch",
			  "url": "https://pokeapi.co/api/v2/move/9/"
			},
			{
			  "name": "body-slam",
			  "url": "https://pokeapi.co/api/v2/move/34/"
			},
			{
			  "name": "stun-spore",
			  "url": "https://pokeapi.co/api/v2/move/78/"
			},
			{
			  "name": "thunder-shock",
			  "url": "https://pokeapi.co/api/v2/move/84/"
			},
			{
			  "name": "thunderbolt",
			  "url": "https://pokeapi.co/api/v2/move/85/"
			},
			{
			  "name": "thunder-wave",
			  "url": "https://pokeapi.co/api/v2/move/86/"
			},
			{
			  "name": "thunder",
			  "url": "https://pokeapi.co/api/v2/move/87/"
			},
			{
			  "name": "lick",
			  "url": "https://pokeapi.co/api/v2/move/122/"
			},
			{
			  "name": "glare",
			  "url": "https://pokeapi.co/api/v2/move/137/"
			},
			{
			  "name": "zap-cannon",
			  "url": "https://pokeapi.co/api/v2/move/192/"
			},
			{
			  "name": "spark",
			  "url": "https://pokeapi.co/api/v2/move/209/"
			},
			{
			  "name": "dragon-breath",
			  "url": "https://pokeapi.co/api/v2/move/225/"
			},
			{
			  "name": "bounce",
			  "url": "https://pokeapi.co/api/v2/move/340/"
			},
			{
			  "name": "volt-tackle",
			  "url": "https://pokeapi.co/api/v2/move/344/"
			},
			{
			  "name": "force-palm",
			  "url": "https://pokeapi.co/api/v2/move/395/"
			},
			{
			  "name": "thunder-fang",
			  "url": "https://pokeapi.co/api/v2/move/422/"
			},
			{
			  "name": "discharge",
			  "url": "https://pokeapi.co/api/v2/move/435/"
			},
			{
			  "name": "bolt-strike",
			  "url": "https://pokeapi.co/api/v2/move/550/"
			},
			{
			  "name": "freeze-shock",
			  "url": "https://pokeapi.co/api/v2/move/553/"
			},
			{
			  "name": "nuzzle",
			  "url": "https://pokeapi.co/api/v2/move/609/"
			},
			{
			  "name": "stoked-sparksurfer",
			  "url": "https://pokeapi.co/api/v2/move/700/"
			}
		  ],
		  "name": "paralysis",
		  "names": [
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Paralysie"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "Parálisis"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Paralysis"
			}
		  ]
		}
		"""#
	}
}
