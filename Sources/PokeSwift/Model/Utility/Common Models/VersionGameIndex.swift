//
//  VersionGameIndex.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class VersionGameIndex: BaseResourceProtocol {
	/// The internal id of an API resource within game data.
	public let gameIndex: Int?
	/// The version relevent to this game index.
	public let version: NamedAPIResource<Version>?
}
