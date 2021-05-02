//
//  Gender.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class Gender: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// A list of Pokémon species that can be this gender and how likely it is that they will be.
	public let pokemonSpeciesDetails: [PokemonSpeciesGender]?
	/// A list of Pokémon species that required this gender in order for a Pokémon to evolve into them.
	public let requiredForEvolution: [NamedAPIResource<PokemonSpecies>]?
}

public class PokemonSpeciesGender: BaseResourceProtocol {
	/// The chance of this Pokémon being female, in eighths; or -1 for genderless.
	public let rate: Int?
	/// A Pokémon species that can be the referenced gender.
	public let pokemonSpecies: NamedAPIResource<PokemonSpecies>?
}

extension Gender: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/gender/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "id": 3,
		  "name": "genderless",
		  "pokemon_species_details": [
			{
			  "pokemon_species": {
				"name": "magnemite",
				"url": "https://pokeapi.co/api/v2/pokemon-species/81/"
			  },
			  "rate": -1
			},
			{
			  "pokemon_species": {
				"name": "voltorb",
				"url": "https://pokeapi.co/api/v2/pokemon-species/100/"
			  },
			  "rate": -1
			},
			{
			  "pokemon_species": {
				"name": "staryu",
				"url": "https://pokeapi.co/api/v2/pokemon-species/120/"
			  },
			  "rate": -1
			},
			{
			  "pokemon_species": {
				"name": "ditto",
				"url": "https://pokeapi.co/api/v2/pokemon-species/132/"
			  },
			  "rate": -1
			},
			{
			  "pokemon_species": {
				"name": "porygon",
				"url": "https://pokeapi.co/api/v2/pokemon-species/137/"
			  },
			  "rate": -1
			},
			{
			  "pokemon_species": {
				"name": "articuno",
				"url": "https://pokeapi.co/api/v2/pokemon-species/144/"
			  },
			  "rate": -1
			},
			{
			  "pokemon_species": {
				"name": "zapdos",
				"url": "https://pokeapi.co/api/v2/pokemon-species/145/"
			  },
			  "rate": -1
			},
			{
			  "pokemon_species": {
				"name": "moltres",
				"url": "https://pokeapi.co/api/v2/pokemon-species/146/"
			  },
			  "rate": -1
			},
			{
			  "pokemon_species": {
				"name": "mewtwo",
				"url": "https://pokeapi.co/api/v2/pokemon-species/150/"
			  },
			  "rate": -1
			},
			{
			  "pokemon_species": {
				"name": "magneton",
				"url": "https://pokeapi.co/api/v2/pokemon-species/82/"
			  },
			  "rate": -1
			},
			{
			  "pokemon_species": {
				"name": "electrode",
				"url": "https://pokeapi.co/api/v2/pokemon-species/101/"
			  },
			  "rate": -1
			},
			{
			  "pokemon_species": {
				"name": "starmie",
				"url": "https://pokeapi.co/api/v2/pokemon-species/121/"
			  },
			  "rate": -1
			},
			{
			  "pokemon_species": {
				"name": "mew",
				"url": "https://pokeapi.co/api/v2/pokemon-species/151/"
			  },
			  "rate": -1
			},
			{
			  "pokemon_species": {
				"name": "unown",
				"url": "https://pokeapi.co/api/v2/pokemon-species/201/"
			  },
			  "rate": -1
			}
		  ],
		  "required_for_evolution": []
		}
		"""#
	}
}
