//
//  VersionEncounterDetail.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class VersionEncounterDetail: BaseResourceProtocol {
	/// The game version this encounter happens in.
	public let version: NamedAPIResource<Version>
	/// The total percentage of all encounter potential.
	public let maxChance: Int
	/// A list of encounters and their specifics.
	public let encounterDetails: [Encounter]
}
