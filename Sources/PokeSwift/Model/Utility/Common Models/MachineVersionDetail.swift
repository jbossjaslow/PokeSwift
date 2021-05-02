//
//  MachineVersionDetail.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class MachineVersionDetail: BaseResourceProtocol {
	/// The machine that teaches a move from an item.
	public let machine: APIResource<Machine>?
	/// The version group of this specific machine.
	public let versionGroup: NamedAPIResource<VersionGroup>?
}
