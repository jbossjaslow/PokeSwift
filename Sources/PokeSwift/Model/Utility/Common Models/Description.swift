//
//  Description.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class Description: BaseResourceProtocol {
	/// The localized description for an API resource in a specific language.
	public let description: String?
	/// The language this name is in.
	public let language: NamedAPIResource<Language>?
}
