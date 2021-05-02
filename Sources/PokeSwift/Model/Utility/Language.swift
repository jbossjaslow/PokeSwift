//
//  Language.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class Language: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// Whether or not the games are published in this language.
	public let official: Bool
	/// The two-letter code of the country where this language is spoken. Note that it is not unique.
	public let iso639: String
	/// The two-letter code of the language. Note that it is not unique.
	public let iso3166: String
	/// The name of this resource listed in different languages.
	public let names: [Name]
}

extension Language: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/language/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "id": 1,
		  "iso3166": "jp",
		  "iso639": "ja",
		  "name": "ja-Hrkt",
		  "names": [
			{
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  },
			  "name": "日本語"
			},
			{
			  "language": {
				"name": "ko",
				"url": "https://pokeapi.co/api/v2/language/3/"
			  },
			  "name": "일본어"
			},
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Japonais"
			},
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "Japanisch"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "Japonés"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Japanese"
			}
		  ],
		  "official": true
		}
		"""#
	}
}
