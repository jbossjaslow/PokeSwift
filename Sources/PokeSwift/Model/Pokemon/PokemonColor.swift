//
//  PokemonColor.swift
//  
//
//  Created by Josh Jaslow on 4/10/21.
//

import Foundation

public class PokemonColor: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int
	/// The name for this resource.
	public let name: String
	/// The name of this resource listed in different languages.
	public let names: [Name]
	/// A list of the Pokémon species that have this color.
	public let pokemonSpecies: [NamedAPIResource<PokemonSpecies>]
}

extension PokemonColor: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/pokemon-color/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "id": 1,
		  "name": "black",
		  "names": [
			{
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  },
			  "name": "黒い"
			},
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Noir"
			},
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "Schwarz"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "Negro"
			},
			{
			  "language": {
				"name": "it",
				"url": "https://pokeapi.co/api/v2/language/8/"
			  },
			  "name": "Nero"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Black"
			}
		  ],
		  "pokemon_species": [
			{
			  "name": "snorlax",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/143/"
			},
			{
			  "name": "murkrow",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/198/"
			},
			{
			  "name": "unown",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/201/"
			},
			{
			  "name": "sneasel",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/215/"
			},
			{
			  "name": "umbreon",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/197/"
			},
			{
			  "name": "houndour",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/228/"
			},
			{
			  "name": "houndoom",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/229/"
			},
			{
			  "name": "mawile",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/303/"
			},
			{
			  "name": "spoink",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/325/"
			},
			{
			  "name": "seviper",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/336/"
			},
			{
			  "name": "shuppet",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/353/"
			},
			{
			  "name": "duskull",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/355/"
			},
			{
			  "name": "claydol",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/344/"
			},
			{
			  "name": "banette",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/354/"
			},
			{
			  "name": "dusclops",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/356/"
			},
			{
			  "name": "chatot",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/441/"
			},
			{
			  "name": "munchlax",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/446/"
			},
			{
			  "name": "honchkrow",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/430/"
			},
			{
			  "name": "giratina",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/487/"
			},
			{
			  "name": "darkrai",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/491/"
			},
			{
			  "name": "blitzle",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/522/"
			},
			{
			  "name": "weavile",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/461/"
			},
			{
			  "name": "dusknoir",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/477/"
			},
			{
			  "name": "zebstrika",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/523/"
			},
			{
			  "name": "sigilyph",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/561/"
			},
			{
			  "name": "yamask",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/562/"
			},
			{
			  "name": "lampent",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/608/"
			},
			{
			  "name": "zekrom",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/644/"
			},
			{
			  "name": "scatterbug",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/664/"
			},
			{
			  "name": "spewpa",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/665/"
			},
			{
			  "name": "pikipek",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/731/"
			},
			{
			  "name": "salandit",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/757/"
			},
			{
			  "name": "trumbeak",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/732/"
			},
			{
			  "name": "toucannon",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/733/"
			},
			{
			  "name": "salazzle",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/758/"
			},
			{
			  "name": "pyukumuku",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/771/"
			},
			{
			  "name": "xurkitree",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/796/"
			},
			{
			  "name": "guzzlord",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/799/"
			},
			{
			  "name": "necrozma",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/800/"
			},
			{
			  "name": "rolycoly",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/837/"
			},
			{
			  "name": "carkol",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/838/"
			},
			{
			  "name": "coalossal",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/839/"
			},
			{
			  "name": "spectrier",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/897/"
			},
			{
			  "name": "chandelure",
			  "url": "https://pokeapi.co/api/v2/pokemon-species/609/"
			}
		  ]
		}
		"""#
	}
}
