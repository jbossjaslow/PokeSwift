//
//  Berry.swift
//  
//
//  Created by Josh Jaslow on 4/7/21.
//

import Foundation

public class Berry: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// Time it takes the tree to grow one stage, in hours. Berry trees go through four of these growth stages before they can be picked.
	public let growthTime: Int
	/// The maximum number of these berries that can grow on one tree in Generation IV.
	public let maxHarvest: Int
	/// The power of the move "Natural Gift" when used with this Berry.
	public let naturalGiftPower: Int
	/// The size of this Berry, in millimeters.
	public let size: Int
	/// The smoothness of this Berry, used in making Pokéblocks or Poffins.
	public let smoothness: Int
	/// The speed at which this Berry dries out the soil as it grows. A higher rate means the soil dries more quickly.
	public let soilDryness: Int
	/// The firmness of this berry, used in making Pokéblocks or Poffins.
	public let firmness: NamedAPIResource<BerryFirmness>
	/// A list of references to each flavor a berry can have and the potency of each of those flavors in regard to this berry.
	public let flavors: [BerryFlavorMap]
	/// Berries are actually items. This is a reference to the item specific data for this berry.
	public let item: NamedAPIResource<Item>
	/// The type inherited by "Natural Gift" when used with this Berry.  
	public let naturalGiftType: NamedAPIResource<Type>
}

public class BerryFlavorMap: BaseResourceProtocol {
	/// How powerful the referenced flavor is for this berry.
	public let potency: Int
	/// The referenced berry flavor.
	public let flavor: NamedAPIResource<BerryFlavor>
}

extension Berry: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/berry/"
	}
	
//	public static func request<T>(using input: RequestInputType,
//								  completion: @escaping (T?) -> Void) where T: BaseResourceProtocol {
//		var inputAsString = ""
//		switch input {
//			case .string(let s):
//				inputAsString = s
//			case .int(let i):
//				inputAsString = "\(i)"
//		}
//
//		let queryURL = url + inputAsString
//		SessionManager.makeRequest(url: queryURL) { (_ result: Result<Self, APIError>) in
//			switch result {
//				case .success(let requestedResult):
//					completion(requestedResult as? T)
//					return
//				case .failure(let error):
//					print(error.localizedDescription)
//					completion(nil)
//					return
//			}
//		}
//	}
	
	public static var testResponse: String {
		#"""
		{"firmness":{"name":"soft","url":"https://pokeapi.co/api/v2/berry-firmness/2/"},"flavors":[{"flavor":{"name":"spicy","url":"https://pokeapi.co/api/v2/berry-flavor/1/"},"potency":10},{"flavor":{"name":"dry","url":"https://pokeapi.co/api/v2/berry-flavor/2/"},"potency":0},{"flavor":{"name":"sweet","url":"https://pokeapi.co/api/v2/berry-flavor/3/"},"potency":0},{"flavor":{"name":"bitter","url":"https://pokeapi.co/api/v2/berry-flavor/4/"},"potency":0},{"flavor":{"name":"sour","url":"https://pokeapi.co/api/v2/berry-flavor/5/"},"potency":0}],"growth_time":3,"id":1,"item":{"name":"cheri-berry","url":"https://pokeapi.co/api/v2/item/126/"},"max_harvest":5,"name":"cheri","natural_gift_power":60,"natural_gift_type":{"name":"fire","url":"https://pokeapi.co/api/v2/type/10/"},"size":20,"smoothness":25,"soil_dryness":15}
		"""#
	}
}
