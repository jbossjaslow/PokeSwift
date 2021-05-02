//
//  Machine.swift
//  
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class Machine: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The TM or HM item that corresponds to this machine.
	public let item: NamedAPIResource<Item>?
	/// The move that is taught by this machine.
	public let move: NamedAPIResource<Move>?
	/// The version group that this machine applies to.
	public let versionGroup: NamedAPIResource<VersionGroup>?
}

extension Machine: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/machine/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "id": 1,
		  "item": {
			"name": "tm01",
			"url": "https://pokeapi.co/api/v2/item/305/"
		  },
		  "move": {
			"name": "mega-punch",
			"url": "https://pokeapi.co/api/v2/move/5/"
		  },
		  "version_group": {
			"name": "red-blue",
			"url": "https://pokeapi.co/api/v2/version-group/1/"
		  }
		}
		"""#
	}
}
