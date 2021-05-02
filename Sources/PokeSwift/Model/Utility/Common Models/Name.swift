//
//  Name.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class Name: BaseResourceProtocol {
	/// The localized name for an API resource in a specific language.
	public let name: String
	/// The language this name is in.
	public let language: NamedAPIResource<Language>
}
