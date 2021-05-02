//
//  Pokedex.swift
//  
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class Pokedex: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// Whether or not this Pokedex originated in the main series of the video games.
	public let isMainSeries: Bool
	/// The description of this resource listed in different languages.
	public let descriptions: [Description]
	/// The name of this resource in different languages.
	public let names: [Name]
	/// A list of Pokemon catalogued in this Pokedex and their indices
	public let pokemonEntries: [PokemonEntry]
	/// The region this Pokédex catalogues Pokémon for.
	public let region: NamedAPIResource<Region>
	/// A list of version groups this Pokedex is relevant to.
	public let versionGroups: [NamedAPIResource<VersionGroup>]
}

public class PokemonEntry: BaseResourceProtocol {
	/// The index of this Pokemon species entry within the Pokedex.
	public let entryNumber: Int
	/// The Pokemon species being encountered.
	public let pokemonSpecies: NamedAPIResource<PokemonSpecies>
}


extension Pokedex: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/pokedex/"
	}
	
	//1 is national dex, 2 is gen 1, etc.
	public static var testResponse: String {
		#"""
		{
		  "descriptions": [
			{
			  "description": "Pokédex régional de Kanto dans Rouge/Bleu/Jaune",
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  }
			},
			{
			  "description": "Rot/Blau/Gelb Kanto Dex",
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  }
			},
			{
			  "description": "Pokédex regional de Rojo/Azul/Amarillo",
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  }
			},
			{
			  "description": "Red/Blue/Yellow Kanto dex",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  }
			}
		  ],
		  "id": 2,
		  "is_main_series": true,
		  "name": "kanto",
		  "names": [
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Kanto"
			},
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "Kanto"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "Kanto"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Kanto"
			}
		  ],
		  "pokemon_entries": [
			{
			  "entry_number": 1,
			  "pokemon_species": {
				"name": "bulbasaur",
				"url": "https://pokeapi.co/api/v2/pokemon-species/1/"
			  }
			},
			{
			  "entry_number": 2,
			  "pokemon_species": {
				"name": "ivysaur",
				"url": "https://pokeapi.co/api/v2/pokemon-species/2/"
			  }
			},
			{
			  "entry_number": 3,
			  "pokemon_species": {
				"name": "venusaur",
				"url": "https://pokeapi.co/api/v2/pokemon-species/3/"
			  }
			},
			{
			  "entry_number": 4,
			  "pokemon_species": {
				"name": "charmander",
				"url": "https://pokeapi.co/api/v2/pokemon-species/4/"
			  }
			},
			{
			  "entry_number": 5,
			  "pokemon_species": {
				"name": "charmeleon",
				"url": "https://pokeapi.co/api/v2/pokemon-species/5/"
			  }
			}
		  ],
		  "region": {
			"name": "kanto",
			"url": "https://pokeapi.co/api/v2/region/1/"
		  },
		  "version_groups": [
			{
			  "name": "red-blue",
			  "url": "https://pokeapi.co/api/v2/version-group/1/"
			},
			{
			  "name": "yellow",
			  "url": "https://pokeapi.co/api/v2/version-group/2/"
			},
			{
			  "name": "firered-leafgreen",
			  "url": "https://pokeapi.co/api/v2/version-group/7/"
			}
		  ]
		}
		"""#
	}
}
