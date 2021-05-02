//
//  GenerationGameIndex.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class GenerationGameIndex: BaseResourceProtocol {
	/// The internal id of an API resource within game data.
	public let gameIndex: Int
	/// The generation relevent to this game index.
	public let generation: NamedAPIResource<Generation>
}
