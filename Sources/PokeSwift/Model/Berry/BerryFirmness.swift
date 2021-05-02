//
//  BerryFirmness.swift
//  
//
//  Created by Josh Jaslow on 4/7/21.
//

import Foundation

public class BerryFirmness: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// A list of the berries with this firmness.
	public let berries: [NamedAPIResource<Berry>]
	/// The name of this resource listed in different languages.
	public let names: [Name]
}

extension BerryFirmness: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/berry-firmness/"
	}
	
	public static var testResponse: String {
		#"""
		{"berries":[{"name":"pecha","url":"https://pokeapi.co/api/v2/berry/3/"},{"name":"pamtre","url":"https://pokeapi.co/api/v2/berry/32/"},{"name":"belue","url":"https://pokeapi.co/api/v2/berry/35/"},{"name":"wacan","url":"https://pokeapi.co/api/v2/berry/38/"},{"name":"tanga","url":"https://pokeapi.co/api/v2/berry/46/"},{"name":"charti","url":"https://pokeapi.co/api/v2/berry/47/"},{"name":"chilan","url":"https://pokeapi.co/api/v2/berry/52/"},{"name":"rowap","url":"https://pokeapi.co/api/v2/berry/64/"}],"id":1,"name":"very-soft","names":[{"language":{"name":"fr","url":"https://pokeapi.co/api/v2/language/5/"},"name":"Très tendre"},{"language":{"name":"es","url":"https://pokeapi.co/api/v2/language/7/"},"name":"Muy blanda"},{"language":{"name":"en","url":"https://pokeapi.co/api/v2/language/9/"},"name":"Very Soft"}]}
		"""#
	}
}
