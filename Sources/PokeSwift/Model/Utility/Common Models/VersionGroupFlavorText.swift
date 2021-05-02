//
//  VersionGroupFlavorText.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class VersionGroupFlavorText: BaseResourceProtocol {
	/// The localized name for an API resource in a specific language.
	public let text: String?
	/// The language this name is in.
	public let language: NamedAPIResource<Language>?
	/// The version group which uses this flavor text.
	public let versionGroup: NamedAPIResource<VersionGroup>?
}
