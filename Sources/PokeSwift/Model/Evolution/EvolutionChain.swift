//
//  EvolutionChain.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

import Foundation

public class EvolutionChain: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The item that a Pokémon would be holding when mating that would trigger the egg hatching a baby Pokémon rather than a basic Pokémon.
	public let babyTriggerItem: NamedAPIResource<Item>?
	/// The base chain link object. Each link contains evolution details for a Pokémon in the chain. Each link references the next Pokémon in the natural evolution order.
	public let chain: ChainLink
}

public class ChainLink: BaseResourceProtocol {
	/// Whether or not this link is for a baby Pokémon. This would only ever be true on the base link.
	public let isBaby: Bool
	/// The Pokémon species at this point in the evolution chain.
	public let species: NamedAPIResource<PokemonSpecies>
	/// All details regarding the specific details of the referenced Pokémon species evolution.
	public let evolutionDetails: [EvolutionDetail]
	/// A List of chain objects.
	public let evolvesTo: [ChainLink]
}

public class EvolutionDetail: BaseResourceProtocol {
	/// The item required to cause evolution this into Pokémon species.
	public let item: NamedAPIResource<Item>?
	/// The type of event that triggers evolution into this Pokémon species.
	public let trigger: NamedAPIResource<EvolutionTrigger>?
	/// The id of the gender of the evolving Pokémon species must be in order to evolve into this Pokémon species.
	public let gender: Int?
	/// The item the evolving Pokémon species must be holding during the evolution trigger event to evolve into this Pokémon species.
	public let heldItem: NamedAPIResource<Item>?
	/// The move that must be known by the evolving Pokémon species during the evolution trigger event in order to evolve into this Pokémon species.
	public let knownMove: NamedAPIResource<Move>?
	/// The evolving Pokémon species must know a move with this type during the evolution trigger event in order to evolve into this Pokémon species.
	public let knownMoveType: NamedAPIResource<Type>?
	/// The location the evolution must be triggered at.
	public let location: NamedAPIResource<Location>?
	/// The minimum required level of the evolving Pokémon species to evolve into this Pokémon species.
	public let minLevel: Int?
	/// The minimum required level of happiness the evolving Pokémon species to evolve into this Pokémon species.
	public let minHappiness: Int?
	/// The minimum required level of beauty the evolving Pokémon species to evolve into this Pokémon species.
	public let minBeauty: Int?
	/// The minimum required level of affection the evolving Pokémon species to evolve into this Pokémon species.
	public let minAffection: Int?
	/// Whether or not it must be raining in the overworld to cause evolution this Pokémon species.
	public let needsOverworldRain: Bool?
	/// The Pokémon species that must be in the players party in order for the evolving Pokémon species to evolve into this Pokémon species.
	public let partySpecies: NamedAPIResource<PokemonSpecies>?
	/// The player must have a Pokémon of this type in their party during the evolution trigger event in order for the evolving Pokémon species to evolve into this Pokémon species.
	public let partyType: NamedAPIResource<Type>?
	/// The required relation between the Pokémon's Attack and Defense stats. 1 means Attack > Defense. 0 means Attack = Defense. -1 means Attack < Defense.
	public let relativePhysicalStats: Int?
	/// The required time of day. Day or night.
	public let timeOfDay: String?
	/// Pokémon species for which this one must be traded.
	public let tradeSpecies: NamedAPIResource<PokemonSpecies>?
	/// Whether or not the 3DS needs to be turned upside-down as this Pokémon levels up.
	public let turnUpsideDown: Bool?
}

extension EvolutionChain: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/evolution-chain/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "baby_trigger_item": null,
		  "chain": {
			"evolution_details": [],
			"evolves_to": [
			  {
				"evolution_details": [
				  {
					"gender": null,
					"held_item": null,
					"item": null,
					"known_move": null,
					"known_move_type": null,
					"location": null,
					"min_affection": null,
					"min_beauty": null,
					"min_happiness": null,
					"min_level": 16,
					"needs_overworld_rain": false,
					"party_species": null,
					"party_type": null,
					"relative_physical_stats": null,
					"time_of_day": "",
					"trade_species": null,
					"trigger": {
					  "name": "level-up",
					  "url": "https://pokeapi.co/api/v2/evolution-trigger/1/"
					},
					"turn_upside_down": false
				  }
				],
				"evolves_to": [
				  {
					"evolution_details": [
					  {
						"gender": null,
						"held_item": null,
						"item": null,
						"known_move": null,
						"known_move_type": null,
						"location": null,
						"min_affection": null,
						"min_beauty": null,
						"min_happiness": null,
						"min_level": 32,
						"needs_overworld_rain": false,
						"party_species": null,
						"party_type": null,
						"relative_physical_stats": null,
						"time_of_day": "",
						"trade_species": null,
						"trigger": {
						  "name": "level-up",
						  "url": "https://pokeapi.co/api/v2/evolution-trigger/1/"
						},
						"turn_upside_down": false
					  }
					],
					"evolves_to": [],
					"is_baby": false,
					"species": {
					  "name": "venusaur",
					  "url": "https://pokeapi.co/api/v2/pokemon-species/3/"
					}
				  }
				],
				"is_baby": false,
				"species": {
				  "name": "ivysaur",
				  "url": "https://pokeapi.co/api/v2/pokemon-species/2/"
				}
			  }
			],
			"is_baby": false,
			"species": {
			  "name": "bulbasaur",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/1/"
			}
		  },
		  "id": 1
		}
		"""#
	}
}
