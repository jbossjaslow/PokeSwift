//
//  Generation.swift
//
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class Generation: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// A list of abilities that were introduced in this generation.
	public let abilities: [NamedAPIResource<Ability>]?
	/// The name of this resource in different languages.
	public let names: [Name]?
	/// The main region travelled in this generation.
	public let mainRegion: NamedAPIResource<Region>?
	/// A list of moves that were introduced in this generation.
	public let moves: [NamedAPIResource<Move>]?
	/// A list of Pokemon species that were introduced in this generation.
	public let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]?
	/// A list of types that were introduced in this generation.
	public let types: [NamedAPIResource<Type>]?
	/// A list of version groups that were introduced in this generation.
	public let versionGroups: [NamedAPIResource<VersionGroup>]?
}

extension Generation: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/generation/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "abilities": [],
		  "id": 1,
		  "main_region": {
			"name": "kanto",
			"url": "https://pokeapi.co/api/v2/region/1/"
		  },
		  "moves": [
			{
			  "name": "pound",
			  "url": "https://pokeapi.co/api/v2/move/1/"
			},
			{
			  "name": "karate-chop",
			  "url": "https://pokeapi.co/api/v2/move/2/"
			},
			{
			  "name": "double-slap",
			  "url": "https://pokeapi.co/api/v2/move/3/"
			}
		  ],
		  "name": "generation-i",
		  "names": [
			{
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  },
			  "name": "だいいちせだい"
			},
			{
			  "language": {
				"name": "ko",
				"url": "https://pokeapi.co/api/v2/language/3/"
			  },
			  "name": "1세대"
			},
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Génération I"
			},
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "Generation I"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "Generación I"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Generation I"
			},
			{
			  "language": {
				"name": "ja",
				"url": "https://pokeapi.co/api/v2/language/11/"
			  },
			  "name": "第一世代"
			}
		  ],
		  "pokemon_species": [
			{
			  "name": "bulbasaur",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/1/"
			},
			{
			  "name": "charmander",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/4/"
			},
			{
			  "name": "squirtle",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/7/"
			},
			{
			  "name": "caterpie",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/10/"
			},
			{
			  "name": "weedle",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/13/"
			},
			{
			  "name": "pidgey",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/16/"
			},
			{
			  "name": "rattata",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/19/"
			},
			{
			  "name": "spearow",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/21/"
			},
			{
			  "name": "ekans",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/23/"
			},
			{
			  "name": "sandshrew",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/27/"
			},
			{
			  "name": "nidoran-f",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/29/"
			},
			{
			  "name": "nidoran-m",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/32/"
			},
			{
			  "name": "vulpix",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/37/"
			},
			{
			  "name": "zubat",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/41/"
			},
			{
			  "name": "oddish",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/43/"
			},
			{
			  "name": "paras",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/46/"
			},
			{
			  "name": "venonat",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/48/"
			},
			{
			  "name": "diglett",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/50/"
			},
			{
			  "name": "meowth",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/52/"
			},
			{
			  "name": "psyduck",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/54/"
			},
			{
			  "name": "mankey",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/56/"
			},
			{
			  "name": "growlithe",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/58/"
			},
			{
			  "name": "poliwag",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/60/"
			},
			{
			  "name": "abra",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/63/"
			},
			{
			  "name": "machop",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/66/"
			},
			{
			  "name": "bellsprout",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/69/"
			},
			{
			  "name": "tentacool",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/72/"
			},
			{
			  "name": "geodude",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/74/"
			},
			{
			  "name": "venusaur",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/3/"
			},
			{
			  "name": "charmeleon",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/5/"
			},
			{
			  "name": "charizard",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/6/"
			},
			{
			  "name": "wartortle",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/8/"
			},
			{
			  "name": "blastoise",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/9/"
			},
			{
			  "name": "metapod",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/11/"
			},
			{
			  "name": "butterfree",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/12/"
			},
			{
			  "name": "kakuna",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/14/"
			},
			{
			  "name": "beedrill",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/15/"
			},
			{
			  "name": "pidgeotto",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/17/"
			},
			{
			  "name": "pidgeot",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/18/"
			},
			{
			  "name": "raticate",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/20/"
			},
			{
			  "name": "fearow",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/22/"
			},
			{
			  "name": "arbok",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/24/"
			},
			{
			  "name": "pikachu",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/25/"
			},
			{
			  "name": "raichu",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/26/"
			},
			{
			  "name": "sandslash",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/28/"
			}
		  ],
		  "types": [
			{
			  "name": "normal",
			  "url": "https://pokeapi.co/api/v2/type/1/"
			},
			{
			  "name": "fighting",
			  "url": "https://pokeapi.co/api/v2/type/2/"
			},
			{
			  "name": "flying",
			  "url": "https://pokeapi.co/api/v2/type/3/"
			},
			{
			  "name": "poison",
			  "url": "https://pokeapi.co/api/v2/type/4/"
			},
			{
			  "name": "ground",
			  "url": "https://pokeapi.co/api/v2/type/5/"
			},
			{
			  "name": "rock",
			  "url": "https://pokeapi.co/api/v2/type/6/"
			},
			{
			  "name": "bug",
			  "url": "https://pokeapi.co/api/v2/type/7/"
			},
			{
			  "name": "ghost",
			  "url": "https://pokeapi.co/api/v2/type/8/"
			},
			{
			  "name": "fire",
			  "url": "https://pokeapi.co/api/v2/type/10/"
			},
			{
			  "name": "water",
			  "url": "https://pokeapi.co/api/v2/type/11/"
			},
			{
			  "name": "grass",
			  "url": "https://pokeapi.co/api/v2/type/12/"
			},
			{
			  "name": "electric",
			  "url": "https://pokeapi.co/api/v2/type/13/"
			},
			{
			  "name": "psychic",
			  "url": "https://pokeapi.co/api/v2/type/14/"
			},
			{
			  "name": "ice",
			  "url": "https://pokeapi.co/api/v2/type/15/"
			},
			{
			  "name": "dragon",
			  "url": "https://pokeapi.co/api/v2/type/16/"
			}
		  ],
		  "version_groups": [
			{
			  "name": "red-blue",
			  "url": "https://pokeapi.co/api/v2/version-group/1/"
			},
			{
			  "name": "yellow",
			  "url": "https://pokeapi.co/api/v2/version-group/2/"
			}
		  ]
		}
		"""#
	}
}
