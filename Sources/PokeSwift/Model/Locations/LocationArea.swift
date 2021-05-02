//
//  LocationArea.swift
//  
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class LocationArea: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// The internal id of an API resource within game data.
	public let gameIndex: Int?
	/// A list of methods in which Pokémon may be encountered in this area and how likely the method will occur depending on the version of the game.
	public let encounterMethodRates: [EncounterMethodRate]?
	/// The region this location area can be found in.
	public let location: NamedAPIResource<Location>?
	/// The name of this item in different languages.
	public let names: [Name]?
	/// A list of Pokémon that can be encountered in this area along with version specific details about the encounter.
	public let pokemonEncounters: [PokemonEncounter]?
}

public class EncounterMethodRate: BaseResourceProtocol {
	/// The method in which Pokémon may be encountered in an area.?
	public let encounterMethod: NamedAPIResource<EncounterMethod>
	/// The chance of the encounter to occur on a version of the game.?
	public let versionDetails: [EncounterVersionDetails]
}

public class EncounterVersionDetails: BaseResourceProtocol {
	/// The chance of an encounter to occur
	public let rate: Int?
	/// The version of the game in which the encounter can occur with the given chance.
	public let version: NamedAPIResource<Version>?
}

public class PokemonEncounter: BaseResourceProtocol {
	/// The Pokemon being encountered.
	public let pokemon: NamedAPIResource<Pokemon>?
	/// A list of versions and encounters with Pokémon that might happen in the referenced location area.
	public let versionDetails: [VersionEncounterDetail]?
}

extension LocationArea: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/location-area/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "encounter_method_rates": [
			{
			  "encounter_method": {
				"name": "old-rod",
				"url": "https://pokeapi.co/api/v2/encounter-method/2/"
			  },
			  "version_details": [
				{
				  "rate": 25,
				  "version": {
					"name": "diamond",
					"url": "https://pokeapi.co/api/v2/version/12/"
				  }
				},
				{
				  "rate": 25,
				  "version": {
					"name": "pearl",
					"url": "https://pokeapi.co/api/v2/version/13/"
				  }
				},
				{
				  "rate": 25,
				  "version": {
					"name": "platinum",
					"url": "https://pokeapi.co/api/v2/version/14/"
				  }
				}
			  ]
			},
			{
			  "encounter_method": {
				"name": "good-rod",
				"url": "https://pokeapi.co/api/v2/encounter-method/3/"
			  },
			  "version_details": [
				{
				  "rate": 50,
				  "version": {
					"name": "diamond",
					"url": "https://pokeapi.co/api/v2/version/12/"
				  }
				},
				{
				  "rate": 50,
				  "version": {
					"name": "pearl",
					"url": "https://pokeapi.co/api/v2/version/13/"
				  }
				},
				{
				  "rate": 50,
				  "version": {
					"name": "platinum",
					"url": "https://pokeapi.co/api/v2/version/14/"
				  }
				}
			  ]
			},
			{
			  "encounter_method": {
				"name": "super-rod",
				"url": "https://pokeapi.co/api/v2/encounter-method/4/"
			  },
			  "version_details": [
				{
				  "rate": 75,
				  "version": {
					"name": "diamond",
					"url": "https://pokeapi.co/api/v2/version/12/"
				  }
				},
				{
				  "rate": 75,
				  "version": {
					"name": "pearl",
					"url": "https://pokeapi.co/api/v2/version/13/"
				  }
				},
				{
				  "rate": 75,
				  "version": {
					"name": "platinum",
					"url": "https://pokeapi.co/api/v2/version/14/"
				  }
				}
			  ]
			},
			{
			  "encounter_method": {
				"name": "surf",
				"url": "https://pokeapi.co/api/v2/encounter-method/5/"
			  },
			  "version_details": [
				{
				  "rate": 10,
				  "version": {
					"name": "diamond",
					"url": "https://pokeapi.co/api/v2/version/12/"
				  }
				},
				{
				  "rate": 10,
				  "version": {
					"name": "pearl",
					"url": "https://pokeapi.co/api/v2/version/13/"
				  }
				},
				{
				  "rate": 10,
				  "version": {
					"name": "platinum",
					"url": "https://pokeapi.co/api/v2/version/14/"
				  }
				}
			  ]
			}
		  ],
		  "game_index": 1,
		  "id": 1,
		  "location": {
			"name": "canalave-city",
			"url": "https://pokeapi.co/api/v2/location/1/"
		  },
		  "name": "canalave-city-area",
		  "names": [
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": ""
			}
		  ],
		  "pokemon_encounters": [
			{
			  "pokemon": {
				"name": "tentacool",
				"url": "https://pokeapi.co/api/v2/pokemon/72/"
			  },
			  "version_details": [
				{
				  "encounter_details": [
					{
					  "chance": 60,
					  "condition_values": [],
					  "max_level": 30,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 60,
				  "version": {
					"name": "diamond",
					"url": "https://pokeapi.co/api/v2/version/12/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 60,
					  "condition_values": [],
					  "max_level": 30,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 60,
				  "version": {
					"name": "pearl",
					"url": "https://pokeapi.co/api/v2/version/13/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 60,
					  "condition_values": [],
					  "max_level": 30,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 60,
				  "version": {
					"name": "platinum",
					"url": "https://pokeapi.co/api/v2/version/14/"
				  }
				}
			  ]
			},
			{
			  "pokemon": {
				"name": "tentacruel",
				"url": "https://pokeapi.co/api/v2/pokemon/73/"
			  },
			  "version_details": [
				{
				  "encounter_details": [
					{
					  "chance": 5,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 5,
				  "version": {
					"name": "diamond",
					"url": "https://pokeapi.co/api/v2/version/12/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 5,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 5,
				  "version": {
					"name": "pearl",
					"url": "https://pokeapi.co/api/v2/version/13/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 5,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					},
					{
					  "chance": 4,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 9,
				  "version": {
					"name": "platinum",
					"url": "https://pokeapi.co/api/v2/version/14/"
				  }
				}
			  ]
			},
			{
			  "pokemon": {
				"name": "staryu",
				"url": "https://pokeapi.co/api/v2/pokemon/120/"
			  },
			  "version_details": [
				{
				  "encounter_details": [
					{
					  "chance": 15,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 15,
				  "version": {
					"name": "diamond",
					"url": "https://pokeapi.co/api/v2/version/12/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 15,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 15,
				  "version": {
					"name": "pearl",
					"url": "https://pokeapi.co/api/v2/version/13/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 15,
					  "condition_values": [],
					  "max_level": 50,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 15,
				  "version": {
					"name": "platinum",
					"url": "https://pokeapi.co/api/v2/version/14/"
				  }
				}
			  ]
			},
			{
			  "pokemon": {
				"name": "magikarp",
				"url": "https://pokeapi.co/api/v2/pokemon/129/"
			  },
			  "version_details": [
				{
				  "encounter_details": [
					{
					  "chance": 60,
					  "condition_values": [],
					  "max_level": 6,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 4
					},
					{
					  "chance": 30,
					  "condition_values": [],
					  "max_level": 7,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 3
					},
					{
					  "chance": 5,
					  "condition_values": [],
					  "max_level": 10,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 5
					},
					{
					  "chance": 4,
					  "condition_values": [],
					  "max_level": 10,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 5
					},
					{
					  "chance": 1,
					  "condition_values": [],
					  "max_level": 10,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 5
					},
					{
					  "chance": 40,
					  "condition_values": [],
					  "max_level": 20,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 15
					},
					{
					  "chance": 15,
					  "condition_values": [],
					  "max_level": 25,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 10
					}
				  ],
				  "max_chance": 155,
				  "version": {
					"name": "diamond",
					"url": "https://pokeapi.co/api/v2/version/12/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 60,
					  "condition_values": [],
					  "max_level": 6,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 4
					},
					{
					  "chance": 30,
					  "condition_values": [],
					  "max_level": 7,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 3
					},
					{
					  "chance": 5,
					  "condition_values": [],
					  "max_level": 10,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 5
					},
					{
					  "chance": 4,
					  "condition_values": [],
					  "max_level": 10,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 5
					},
					{
					  "chance": 1,
					  "condition_values": [],
					  "max_level": 10,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 5
					},
					{
					  "chance": 40,
					  "condition_values": [],
					  "max_level": 20,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 15
					},
					{
					  "chance": 15,
					  "condition_values": [],
					  "max_level": 25,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 10
					}
				  ],
				  "max_chance": 155,
				  "version": {
					"name": "pearl",
					"url": "https://pokeapi.co/api/v2/version/13/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 60,
					  "condition_values": [],
					  "max_level": 6,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 4
					},
					{
					  "chance": 30,
					  "condition_values": [],
					  "max_level": 7,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 3
					},
					{
					  "chance": 5,
					  "condition_values": [],
					  "max_level": 10,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 5
					},
					{
					  "chance": 4,
					  "condition_values": [],
					  "max_level": 10,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 5
					},
					{
					  "chance": 1,
					  "condition_values": [],
					  "max_level": 15,
					  "method": {
						"name": "old-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/2/"
					  },
					  "min_level": 5
					},
					{
					  "chance": 40,
					  "condition_values": [],
					  "max_level": 20,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 15
					},
					{
					  "chance": 15,
					  "condition_values": [],
					  "max_level": 25,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 10
					}
				  ],
				  "max_chance": 155,
				  "version": {
					"name": "platinum",
					"url": "https://pokeapi.co/api/v2/version/14/"
				  }
				}
			  ]
			},
			{
			  "pokemon": {
				"name": "gyarados",
				"url": "https://pokeapi.co/api/v2/pokemon/130/"
			  },
			  "version_details": [
				{
				  "encounter_details": [
					{
					  "chance": 40,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 30
					}
				  ],
				  "max_chance": 40,
				  "version": {
					"name": "diamond",
					"url": "https://pokeapi.co/api/v2/version/12/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 40,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 30
					}
				  ],
				  "max_chance": 40,
				  "version": {
					"name": "pearl",
					"url": "https://pokeapi.co/api/v2/version/13/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 40,
					  "condition_values": [],
					  "max_level": 55,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 30
					}
				  ],
				  "max_chance": 40,
				  "version": {
					"name": "platinum",
					"url": "https://pokeapi.co/api/v2/version/14/"
				  }
				}
			  ]
			},
			{
			  "pokemon": {
				"name": "wingull",
				"url": "https://pokeapi.co/api/v2/pokemon/278/"
			  },
			  "version_details": [
				{
				  "encounter_details": [
					{
					  "chance": 30,
					  "condition_values": [],
					  "max_level": 30,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 30,
				  "version": {
					"name": "diamond",
					"url": "https://pokeapi.co/api/v2/version/12/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 30,
					  "condition_values": [],
					  "max_level": 30,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 30,
				  "version": {
					"name": "pearl",
					"url": "https://pokeapi.co/api/v2/version/13/"
				  }
				}
			  ]
			},
			{
			  "pokemon": {
				"name": "pelipper",
				"url": "https://pokeapi.co/api/v2/pokemon/279/"
			  },
			  "version_details": [
				{
				  "encounter_details": [
					{
					  "chance": 4,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					},
					{
					  "chance": 1,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 5,
				  "version": {
					"name": "diamond",
					"url": "https://pokeapi.co/api/v2/version/12/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 4,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					},
					{
					  "chance": 1,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 5,
				  "version": {
					"name": "pearl",
					"url": "https://pokeapi.co/api/v2/version/13/"
				  }
				}
			  ]
			},
			{
			  "pokemon": {
				"name": "shellos",
				"url": "https://pokeapi.co/api/v2/pokemon/422/"
			  },
			  "version_details": [
				{
				  "encounter_details": [
					{
					  "chance": 30,
					  "condition_values": [],
					  "max_level": 30,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 30,
				  "version": {
					"name": "platinum",
					"url": "https://pokeapi.co/api/v2/version/14/"
				  }
				}
			  ]
			},
			{
			  "pokemon": {
				"name": "gastrodon",
				"url": "https://pokeapi.co/api/v2/pokemon/423/"
			  },
			  "version_details": [
				{
				  "encounter_details": [
					{
					  "chance": 1,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "surf",
						"url": "https://pokeapi.co/api/v2/encounter-method/5/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 1,
				  "version": {
					"name": "platinum",
					"url": "https://pokeapi.co/api/v2/version/14/"
				  }
				}
			  ]
			},
			{
			  "pokemon": {
				"name": "finneon",
				"url": "https://pokeapi.co/api/v2/pokemon/456/"
			  },
			  "version_details": [
				{
				  "encounter_details": [
					{
					  "chance": 40,
					  "condition_values": [],
					  "max_level": 20,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 15
					},
					{
					  "chance": 4,
					  "condition_values": [],
					  "max_level": 25,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 10
					},
					{
					  "chance": 1,
					  "condition_values": [],
					  "max_level": 25,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 10
					}
				  ],
				  "max_chance": 45,
				  "version": {
					"name": "diamond",
					"url": "https://pokeapi.co/api/v2/version/12/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 40,
					  "condition_values": [],
					  "max_level": 20,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 15
					},
					{
					  "chance": 4,
					  "condition_values": [],
					  "max_level": 25,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 10
					},
					{
					  "chance": 1,
					  "condition_values": [],
					  "max_level": 25,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 10
					}
				  ],
				  "max_chance": 45,
				  "version": {
					"name": "pearl",
					"url": "https://pokeapi.co/api/v2/version/13/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 40,
					  "condition_values": [],
					  "max_level": 20,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 15
					},
					{
					  "chance": 4,
					  "condition_values": [],
					  "max_level": 25,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 10
					},
					{
					  "chance": 1,
					  "condition_values": [],
					  "max_level": 25,
					  "method": {
						"name": "good-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/3/"
					  },
					  "min_level": 10
					}
				  ],
				  "max_chance": 45,
				  "version": {
					"name": "platinum",
					"url": "https://pokeapi.co/api/v2/version/14/"
				  }
				}
			  ]
			},
			{
			  "pokemon": {
				"name": "lumineon",
				"url": "https://pokeapi.co/api/v2/pokemon/457/"
			  },
			  "version_details": [
				{
				  "encounter_details": [
					{
					  "chance": 40,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 30
					},
					{
					  "chance": 4,
					  "condition_values": [],
					  "max_level": 50,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 20
					},
					{
					  "chance": 1,
					  "condition_values": [],
					  "max_level": 50,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 45,
				  "version": {
					"name": "diamond",
					"url": "https://pokeapi.co/api/v2/version/12/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 40,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 30
					},
					{
					  "chance": 4,
					  "condition_values": [],
					  "max_level": 50,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 20
					},
					{
					  "chance": 1,
					  "condition_values": [],
					  "max_level": 50,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 20
					}
				  ],
				  "max_chance": 45,
				  "version": {
					"name": "pearl",
					"url": "https://pokeapi.co/api/v2/version/13/"
				  }
				},
				{
				  "encounter_details": [
					{
					  "chance": 40,
					  "condition_values": [],
					  "max_level": 40,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 30
					},
					{
					  "chance": 4,
					  "condition_values": [],
					  "max_level": 55,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 40
					},
					{
					  "chance": 1,
					  "condition_values": [],
					  "max_level": 55,
					  "method": {
						"name": "super-rod",
						"url": "https://pokeapi.co/api/v2/encounter-method/4/"
					  },
					  "min_level": 40
					}
				  ],
				  "max_chance": 45,
				  "version": {
					"name": "platinum",
					"url": "https://pokeapi.co/api/v2/version/14/"
				  }
				}
			  ]
			}
		  ]
		}
		"""#
	}
}
