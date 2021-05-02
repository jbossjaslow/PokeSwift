//
//  FlavorText.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class FlavorText: BaseResourceProtocol {
	/// The localized flavor text for an API resource in a specific language.
	public let flavorText: String
	/// The language this name is in.
	public let language: NamedAPIResource<Language>
	/// The game version this flavor text is extracted from.
	public let version: NamedAPIResource<Version>?
}
