//
//  MoveLearnMethod.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class MoveLearnMethod: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// The description of this resource listed in different languages.
	public let descriptions: [Description]?
	/// The name of this resource listed in different languages.
	public let names: [Name]?
	/// A list of version groups where moves can be learned through this method.
	public let versionGroups: [NamedAPIResource<VersionGroup>]?
}

extension MoveLearnMethod: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/move-learn-method/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "descriptions": [
			{
			  "description": "Wird gelernt, wenn ein Pokémon ein bestimmtes Level erreicht.",
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  }
			},
			{
			  "description": "Se aprende cuando un pokemon alcanza un cierto nivel.",
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  }
			},
			{
			  "description": "Learned when a Pokémon reaches a certain level.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  }
			}
		  ],
		  "id": 1,
		  "name": "level-up",
		  "names": [
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "Level up"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "Nivel"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Level up"
			}
		  ],
		  "version_groups": [
			{
			  "name": "red-blue",
			  "url": "https://pokeapi.co/api/v2/version-group/1/"
			},
			{
			  "name": "yellow",
			  "url": "https://pokeapi.co/api/v2/version-group/2/"
			},
			{
			  "name": "gold-silver",
			  "url": "https://pokeapi.co/api/v2/version-group/3/"
			},
			{
			  "name": "crystal",
			  "url": "https://pokeapi.co/api/v2/version-group/4/"
			},
			{
			  "name": "ruby-sapphire",
			  "url": "https://pokeapi.co/api/v2/version-group/5/"
			},
			{
			  "name": "emerald",
			  "url": "https://pokeapi.co/api/v2/version-group/6/"
			},
			{
			  "name": "firered-leafgreen",
			  "url": "https://pokeapi.co/api/v2/version-group/7/"
			},
			{
			  "name": "diamond-pearl",
			  "url": "https://pokeapi.co/api/v2/version-group/8/"
			},
			{
			  "name": "platinum",
			  "url": "https://pokeapi.co/api/v2/version-group/9/"
			},
			{
			  "name": "heartgold-soulsilver",
			  "url": "https://pokeapi.co/api/v2/version-group/10/"
			},
			{
			  "name": "black-white",
			  "url": "https://pokeapi.co/api/v2/version-group/11/"
			},
			{
			  "name": "colosseum",
			  "url": "https://pokeapi.co/api/v2/version-group/12/"
			},
			{
			  "name": "xd",
			  "url": "https://pokeapi.co/api/v2/version-group/13/"
			},
			{
			  "name": "black-2-white-2",
			  "url": "https://pokeapi.co/api/v2/version-group/14/"
			},
			{
			  "name": "x-y",
			  "url": "https://pokeapi.co/api/v2/version-group/15/"
			},
			{
			  "name": "omega-ruby-alpha-sapphire",
			  "url": "https://pokeapi.co/api/v2/version-group/16/"
			},
			{
			  "name": "sun-moon",
			  "url": "https://pokeapi.co/api/v2/version-group/17/"
			},
			{
			  "name": "ultra-sun-ultra-moon",
			  "url": "https://pokeapi.co/api/v2/version-group/18/"
			}
		  ]
		}
		"""#
	}
}
