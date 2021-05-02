//
//  EggGroup.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class EggGroup: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// The name of this resource listed in different languages.
	public let names: [Name]
	/// A list of all Pokemon species that are members of this egg group.
	public let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]
}

extension EggGroup: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/egg-group/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "id": 1,
		  "name": "monster",
		  "names": [
			{
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  },
			  "name": "かいじゅう"
			},
			{
			  "language": {
				"name": "ko",
				"url": "https://pokeapi.co/api/v2/language/3/"
			  },
			  "name": "괴수"
			},
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Monstrueux"
			},
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "Monster"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "Monstruo"
			},
			{
			  "language": {
				"name": "it",
				"url": "https://pokeapi.co/api/v2/language/8/"
			  },
			  "name": "Mostro"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Monster"
			}
		  ],
		  "pokemon_species": [
			{
			  "name": "bulbasaur",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/1/"
			},
			{
			  "name": "ivysaur",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/2/"
			},
			{
			  "name": "venusaur",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/3/"
			},
			{
			  "name": "charmander",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/4/"
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
			  "name": "squirtle",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/7/"
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
			  "name": "nidoran-f",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/29/"
			},
			{
			  "name": "nidoran-m",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/32/"
			},
			{
			  "name": "nidorino",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/33/"
			},
			{
			  "name": "nidoking",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/34/"
			},
			{
			  "name": "slowpoke",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/79/"
			},
			{
			  "name": "slowbro",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/80/"
			},
			{
			  "name": "cubone",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/104/"
			},
			{
			  "name": "marowak",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/105/"
			},
			{
			  "name": "lickitung",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/108/"
			},
			{
			  "name": "rhyhorn",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/111/"
			},
			{
			  "name": "rhydon",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/112/"
			},
			{
			  "name": "kangaskhan",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/115/"
			},
			{
			  "name": "lapras",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/131/"
			},
			{
			  "name": "snorlax",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/143/"
			},
			{
			  "name": "chikorita",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/152/"
			},
			{
			  "name": "bayleef",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/153/"
			},
			{
			  "name": "meganium",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/154/"
			},
			{
			  "name": "totodile",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/158/"
			},
			{
			  "name": "croconaw",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/159/"
			},
			{
			  "name": "feraligatr",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/160/"
			},
			{
			  "name": "mareep",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/179/"
			},
			{
			  "name": "flaaffy",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/180/"
			},
			{
			  "name": "ampharos",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/181/"
			},
			{
			  "name": "slowking",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/199/"
			},
			{
			  "name": "larvitar",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/246/"
			},
			{
			  "name": "pupitar",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/247/"
			},
			{
			  "name": "tyranitar",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/248/"
			},
			{
			  "name": "treecko",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/252/"
			},
			{
			  "name": "grovyle",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/253/"
			},
			{
			  "name": "sceptile",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/254/"
			},
			{
			  "name": "mudkip",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/258/"
			},
			{
			  "name": "marshtomp",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/259/"
			},
			{
			  "name": "swampert",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/260/"
			},
			{
			  "name": "whismur",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/293/"
			},
			{
			  "name": "loudred",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/294/"
			},
			{
			  "name": "exploud",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/295/"
			},
			{
			  "name": "aron",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/304/"
			},
			{
			  "name": "lairon",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/305/"
			},
			{
			  "name": "aggron",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/306/"
			},
			{
			  "name": "tropius",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/357/"
			},
			{
			  "name": "turtwig",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/387/"
			},
			{
			  "name": "grotle",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/388/"
			},
			{
			  "name": "torterra",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/389/"
			},
			{
			  "name": "cranidos",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/408/"
			},
			{
			  "name": "rampardos",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/409/"
			},
			{
			  "name": "shieldon",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/410/"
			},
			{
			  "name": "bastiodon",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/411/"
			},
			{
			  "name": "gible",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/443/"
			},
			{
			  "name": "gabite",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/444/"
			},
			{
			  "name": "garchomp",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/445/"
			},
			{
			  "name": "snover",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/459/"
			},
			{
			  "name": "abomasnow",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/460/"
			},
			{
			  "name": "lickilicky",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/463/"
			},
			{
			  "name": "rhyperior",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/464/"
			},
			{
			  "name": "axew",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/610/"
			},
			{
			  "name": "fraxure",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/611/"
			},
			{
			  "name": "haxorus",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/612/"
			},
			{
			  "name": "druddigon",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/621/"
			},
			{
			  "name": "helioptile",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/694/"
			},
			{
			  "name": "heliolisk",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/695/"
			},
			{
			  "name": "tyrunt",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/696/"
			},
			{
			  "name": "tyrantrum",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/697/"
			},
			{
			  "name": "amaura",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/698/"
			},
			{
			  "name": "aurorus",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/699/"
			},
			{
			  "name": "bergmite",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/712/"
			},
			{
			  "name": "avalugg",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/713/"
			},
			{
			  "name": "salandit",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/757/"
			},
			{
			  "name": "salazzle",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/758/"
			},
			{
			  "name": "turtonator",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/776/"
			},
			{
			  "name": "drampa",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/780/"
			}
		  ]
		}
		"""#
	}
}
