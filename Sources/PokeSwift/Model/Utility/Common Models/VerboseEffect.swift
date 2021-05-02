//
//  VerboseEffect.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class VerboseEffect: BaseResourceProtocol {
	/// The localized effect text for an API resource in a specific language.
	public let effect: String?
	/// The localized effect text in brief.
	public let shortEffect: String?
	/// The language this effect is in.
	public let language: NamedAPIResource<Language>?
}
