//
//  Version.swift
//  
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class Version: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// The name of this resource in different languages.
	public let names: [Name]?
	/// The version group this version belongs to.
	public let versionGroup: NamedAPIResource<VersionGroup>?
}

extension Version: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/version/"
	}
	
	public static var testResponse: String {
		#"""
		{
			"id": 1,
			"name": "red",
			"names": [
				{
					"language": {
						"name": "ja-Hrkt",
						"url": "https://pokeapi.co/api/v2/language/1/"
					},
					"name": "赤"
				},
				{
					"language": {
						"name": "ko",
						"url": "https://pokeapi.co/api/v2/language/3/"
					},
					"name": "레드"
				},
				{
					"language": {
						"name": "fr",
						"url": "https://pokeapi.co/api/v2/language/5/"
					},
					"name": "Rouge"
				},
				{
					"language": {
						"name": "de",
						"url": "https://pokeapi.co/api/v2/language/6/"
					},
					"name": "Rot"
				},
				{
					"language": {
						"name": "es",
						"url": "https://pokeapi.co/api/v2/language/7/"
					},
					"name": "Rojo"
				},
				{
					"language": {
						"name": "it",
						"url": "https://pokeapi.co/api/v2/language/8/"
					},
					"name": "Rossa"
				},
				{
					"language": {
						"name": "en",
						"url": "https://pokeapi.co/api/v2/language/9/"
					},
					"name": "Red"
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
