//
//  ContestType.swift
//  
//
//  Created by Josh Jaslow on 4/7/21.
//

import Foundation

public class ContestType: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// The berry flavor that correlates with this contest type.
	public let berryFlavor: NamedAPIResource<BerryFlavor>?
	/// The name of this contest type listed in different languages.
	public let names: [ContestName]?
}

public class ContestName: BaseResourceProtocol {
	/// The name for this contest.
	public let name: String?
	/// The color associated with this contest's name.
	public let color: String?
	/// The language that this name is in.
	public let language: NamedAPIResource<Language>?
}

extension ContestType: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/contest-type/"
	}
	
	public static var testResponse: String {
		#"""
		{"berry_flavor":{"name":"spicy","url":"https://pokeapi.co/api/v2/berry-flavor/1/"},"id":1,"name":"cool","names":[{"color":"Rouge","language":{"name":"fr","url":"https://pokeapi.co/api/v2/language/5/"},"name":"Sang-froid"},{"color":"Red","language":{"name":"en","url":"https://pokeapi.co/api/v2/language/9/"},"name":"Cool"}]}
		"""#
	}
}
