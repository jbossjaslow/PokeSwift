//
//  LocationAreaEncounter.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class LocationAreaEncounter: BaseResourceProtocol {
	/// The location area the referenced Pokémon can be encountered in.
	public let locationArea: NamedAPIResource<LocationArea>?
	/// A list of versions and encounters with the referenced Pokémon that might happen.
	public let versionDetails: [VersionEncounterDetail]?
}

extension LocationAreaEncounter: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/pokemon/"
	}
	
	//Overriding default implementation
	public static func request<T>(using input: RequestInputType,
						   completion: @escaping (_ result: T?) -> Void) where T: BaseResourceProtocol {
		var inputAsString = ""
		switch input {
			case .string(let s):
				inputAsString = s
			case .int(let i):
				inputAsString = "\(i)"
		}
		
		let queryURL = url + inputAsString + "/encounters"
		SessionManager.makeRequest(url: queryURL) { (_ result: Result<T, APIError>) in
			switch result {
				case .success(let requestedResult):
					completion(requestedResult)
					return
				case .failure(let error):
					print(error.localizedDescription)
					completion(nil)
					return
			}
		}
	}
	
	public static var testResponse: String {
		#"""
		{
			"location_area": {
				"name": "cerulean-city-area",
				"url": "https://pokeapi.co/api/v2/location-area/281/"
			},
			"version_details": [
				{
					"encounter_details": [
						{
							"chance": 100,
							"condition_values": [],
							"max_level": 10,
							"method": {
								"name": "gift",
								"url": "https://pokeapi.co/api/v2/encounter-method/18/"
							},
							"min_level": 10
						}
					],
					"max_chance": 100,
					"version": {
						"name": "yellow",
						"url": "https://pokeapi.co/api/v2/version/3/"
					}
				}
			]
		}
		"""#
	}
}
