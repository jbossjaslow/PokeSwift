//
//  Move.swift
//  
//
//  Created by Josh Jaslow on 4/9/21.
//

import Foundation

public class Move: BaseResourceProtocol {
	/// The identifier for this resource.
	public let id: Int?
	/// The name for this resource.
	public let name: String?
	/// The percent value of how likely this move is to be successful.
	public let accuracy: Int?
	/// The percent value of how likely it is this moves effect will happen.
	public let effectChance: Int?
	/// Power points. The number of times this move can be used.
	public let pp: Int?
	/// A value between -8 and 8. Sets the order in which moves are executed during battle. See Bulbapedia for greater detail.
	public let priority: Int?
	/// The base power of this move with a value of 0 if it does not have a base power.
	public let power: Int?
	/// A detail of normal and super contest combos that require this move.
	public let contestCombos: ContestComboSets?
	/// The type of appeal this move gives a Pokémon when used in a contest.
	public let contestType: NamedAPIResource<ContestType>?
	/// The effect the move has when used in a contest.
	public let contestEffect: APIResource<ContestEffect>?
	/// The type of damage the move inflicts on the target, e.g. physical.
	public let damageClass: NamedAPIResource<MoveDamageClass>?
	/// The effect of this move listed in different languages.
	public let effectEntries: [VerboseEffect]?
	/// The list of previous effects this move has had across version groups of the games.
	public let effectChanges: [AbilityEffectChange]?
	/// The flavor text of this move listed in different languages.
	public let flavorTextEntries: [MoveFlavorText]?
	/// The generation in which this move was introduced.
	public let generation: NamedAPIResource<Generation>?
	/// A list of Pokemon that learn this move.
	public let learnedByPokemon: [NamedAPIResource<Pokemon>]?
	/// A list of the machines that teach this move.
	public let machines: [MachineVersionDetail]?
	/// Metadata about this move
	public let meta: MoveMetaData?
	/// The name of this resource listed in different languages.
	public let names: [Name]?
	/// A list of move resource value changes across version groups of the game.
	public let pastValues: [PastMoveStatValues]?
	/// A list of stats this moves effects and how much it effects them.
	public let statChanges: [MoveStatChange]?
	/// The effect the move has when used in a super contest.
	public let superContestEffect: APIResource<SuperContestEffect>?
	/// The type of target that will receive the effects of the attack.
	public let target: NamedAPIResource<MoveTarget>?
	/// The elemental type of this move.
	public let type: NamedAPIResource<Type>?
}

public class ContestComboDetail: BaseResourceProtocol {
	/// A list of moves to use before this move.
	public let useBefore: [NamedAPIResource<Move>]?
	/// A list of moves to use after this move.
	public let useAfter: [NamedAPIResource<Move>]?
}

public class ContestComboSets: BaseResourceProtocol {
	enum CodingKeys: String, CodingKey {
		case normal
		case superCombo = "super"
	}
	
	/// A detail of moves this move can be used before or after, granting additional appeal points in contests.
	public let normal: ContestComboDetail?
	/// A detail of moves this move can be used before or after, granting additional appeal points in contests.
	public let superCombo: ContestComboDetail?
	
	required public init(from decoder: Decoder) throws {
		let sets = try decoder.container(keyedBy: CodingKeys.self)
		normal = try sets.decode(ContestComboDetail.self, forKey: .normal)
		superCombo = try sets.decode(ContestComboDetail.self, forKey: .superCombo)
	}
}

public class MoveFlavorText: BaseResourceProtocol {
	/// The localized flavor text for an api resource in a specific language.
	public let flavorText: String?
	/// The language this name is in.
	public let language: NamedAPIResource<Language>?
	/// The version group that uses this flavor text.
	public let versionGroup: NamedAPIResource<VersionGroup>?
}

public class MoveMetaData: BaseResourceProtocol {
	/// The status ailment this move inflicts on its target.
	public let ailment: NamedAPIResource<MoveAilment>?
	/// The category of move this move falls under, e.g. damage or ailment.
	public let category: NamedAPIResource<MoveCategory>?
	/// The minimum number of times this move hits. Null if it always only hits once.
	public let minHits: Int?
	/// The maximum number of times this move hits. Null if it always only hits once.
	public let maxHits: Int?
	/// The minimum number of turns this move continues to take effect. Null if it always only lasts one turn.
	public let minTurns: Int?
	/// The maximum number of turns this move continues to take effect. Null if it always only lasts one turn.
	public let maxTurns: Int?
	/// HP drain (if positive) or Recoil damage (if negative), in percent of damage done.
	public let drain: Int?
	/// The amount of hp gained by the attacking Pokemon, in percent of it's maximum HP.
	public let healing: Int?
	/// Critical hit rate bonus.
	public let critRate: Int?
	/// The likelihood this attack will cause an ailment.
	public let ailmentChance: Int?
	/// The likelihood this attack will cause the target Pokémon to flinch.
	public let flinchChance: Int?
	/// The likelihood this attack will cause a stat change in the target Pokémon.
	public let statChance: Int?
}

public class MoveStatChange: BaseResourceProtocol {
	/// The amount of change.
	public let change: Int?
	/// The stat being affected.
	public let stat: NamedAPIResource<Stat>?
}

public class PastMoveStatValues: BaseResourceProtocol {
	/// The percent value of how likely this move is to be successful.
	public let accuracy: Int?
	/// The percent value of how likely it is this moves effect will take effect.
	public let effectChance: Int?
	/// The base power of this move with a value of 0 if it does not have a base power.
	public let power: Int?
	/// Power points. The number of times this move can be used.
	public let pp: Int?
	/// The effect of this move listed in different languages.
	public let effectEntries: [VerboseEffect]?
	/// The elemental type of this move.
	public let type: NamedAPIResource<Type>?
	/// The version group in which these move stat values were in effect.
	public let versionGroup: NamedAPIResource<VersionGroup>?
}

extension Move: Requestable {
	public static var url: String {
		"https://pokeapi.co/api/v2/move/"
	}
	
	public static var testResponse: String {
		#"""
		{
		  "accuracy": 100,
		  "contest_combos": {
			"normal": {
			  "use_after": null,
			  "use_before": [
				{
				  "name": "double-slap",
				  "url": "https://pokeapi.co/api/v2/move/3/"
				},
				{
				  "name": "slam",
				  "url": "https://pokeapi.co/api/v2/move/21/"
				},
				{
				  "name": "feint-attack",
				  "url": "https://pokeapi.co/api/v2/move/185/"
				}
			  ]
			},
			"super": {
			  "use_after": null,
			  "use_before": null
			}
		  },
		  "contest_effect": {
			"url": "https://pokeapi.co/api/v2/contest-effect/1/"
		  },
		  "contest_type": {
			"name": "tough",
			"url": "https://pokeapi.co/api/v2/contest-type/5/"
		  },
		  "damage_class": {
			"name": "physical",
			"url": "https://pokeapi.co/api/v2/move-damage-class/2/"
		  },
		  "effect_chance": null,
		  "effect_changes": [],
		  "effect_entries": [
			{
			  "effect": "Inflicts regular damage.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "short_effect": "Inflicts regular damage with no additional effect."
			}
		  ],
		  "flavor_text_entries": [
			{
			  "flavor_text": "Pounds with fore­\nlegs or tail.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "gold-silver",
				"url": "https://pokeapi.co/api/v2/version-group/3/"
			  }
			},
			{
			  "flavor_text": "Pounds with fore­\nlegs or tail.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "crystal",
				"url": "https://pokeapi.co/api/v2/version-group/4/"
			  }
			},
			{
			  "flavor_text": "Pounds the foe with\nforelegs or tail.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "ruby-sapphire",
				"url": "https://pokeapi.co/api/v2/version-group/5/"
			  }
			},
			{
			  "flavor_text": "Pounds the foe with\nforelegs or tail.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "emerald",
				"url": "https://pokeapi.co/api/v2/version-group/6/"
			  }
			},
			{
			  "flavor_text": "A physical attack\ndelivered with a\nlong tail or a\nforeleg, etc.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "firered-leafgreen",
				"url": "https://pokeapi.co/api/v2/version-group/7/"
			  }
			},
			{
			  "flavor_text": "The foe is physically\npounded with a long\ntail or a foreleg,\netc.\n",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "diamond-pearl",
				"url": "https://pokeapi.co/api/v2/version-group/8/"
			  }
			},
			{
			  "flavor_text": "The foe is physically\npounded with a long\ntail or a foreleg,\netc.\n",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "platinum",
				"url": "https://pokeapi.co/api/v2/version-group/9/"
			  }
			},
			{
			  "flavor_text": "The foe is physically\npounded with a long\ntail or a foreleg,\netc.\n",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "heartgold-soulsilver",
				"url": "https://pokeapi.co/api/v2/version-group/10/"
			  }
			},
			{
			  "flavor_text": "Écrase l’ennemi avec les pattes\navant, la queue, etc.",
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "version_group": {
				"name": "black-white",
				"url": "https://pokeapi.co/api/v2/version-group/11/"
			  }
			},
			{
			  "flavor_text": "The target is physically pounded with\na long tail or a foreleg, etc.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "black-white",
				"url": "https://pokeapi.co/api/v2/version-group/11/"
			  }
			},
			{
			  "flavor_text": "The target is physically pounded with\na long tail or a foreleg, etc.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "black-2-white-2",
				"url": "https://pokeapi.co/api/v2/version-group/14/"
			  }
			},
			{
			  "flavor_text": "ながい　しっぽや　てなどを　つかって\nあいてを　はたいて　こうげきする。\n",
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  },
			  "version_group": {
				"name": "x-y",
				"url": "https://pokeapi.co/api/v2/version-group/15/"
			  }
			},
			{
			  "flavor_text": "긴 꼬리나 손 등을 사용하여\n상대를 때려서 공격한다.",
			  "language": {
				"name": "ko",
				"url": "https://pokeapi.co/api/v2/language/3/"
			  },
			  "version_group": {
				"name": "x-y",
				"url": "https://pokeapi.co/api/v2/version-group/15/"
			  }
			},
			{
			  "flavor_text": "Écrase l’ennemi avec les pattes avant ou la queue,\npar exemple.",
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "version_group": {
				"name": "x-y",
				"url": "https://pokeapi.co/api/v2/version-group/15/"
			  }
			},
			{
			  "flavor_text": "Ein Hieb mit den Vorderbeinen oder dem Schweif.",
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "version_group": {
				"name": "x-y",
				"url": "https://pokeapi.co/api/v2/version-group/15/"
			  }
			},
			{
			  "flavor_text": "Golpea con las patas o la cola.",
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "version_group": {
				"name": "x-y",
				"url": "https://pokeapi.co/api/v2/version-group/15/"
			  }
			},
			{
			  "flavor_text": "Colpisce il bersaglio con la coda o le zampe\nanteriori.",
			  "language": {
				"name": "it",
				"url": "https://pokeapi.co/api/v2/language/8/"
			  },
			  "version_group": {
				"name": "x-y",
				"url": "https://pokeapi.co/api/v2/version-group/15/"
			  }
			},
			{
			  "flavor_text": "The target is physically pounded with\na long tail, a foreleg, or the like.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "x-y",
				"url": "https://pokeapi.co/api/v2/version-group/15/"
			  }
			},
			{
			  "flavor_text": "長い　しっぽや　手などを　使って\n相手を　はたいて　攻撃する。\n",
			  "language": {
				"name": "ja",
				"url": "https://pokeapi.co/api/v2/language/11/"
			  },
			  "version_group": {
				"name": "x-y",
				"url": "https://pokeapi.co/api/v2/version-group/15/"
			  }
			},
			{
			  "flavor_text": "ながい　しっぽや　てなどを　つかって\nあいてを　はたいて　こうげきする。\n",
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  },
			  "version_group": {
				"name": "omega-ruby-alpha-sapphire",
				"url": "https://pokeapi.co/api/v2/version-group/16/"
			  }
			},
			{
			  "flavor_text": "긴 꼬리나 손 등을 사용하여\n상대를 때려서 공격한다.",
			  "language": {
				"name": "ko",
				"url": "https://pokeapi.co/api/v2/language/3/"
			  },
			  "version_group": {
				"name": "omega-ruby-alpha-sapphire",
				"url": "https://pokeapi.co/api/v2/version-group/16/"
			  }
			},
			{
			  "flavor_text": "Écrase l’ennemi avec les pattes avant ou la queue,\npar exemple.",
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "version_group": {
				"name": "omega-ruby-alpha-sapphire",
				"url": "https://pokeapi.co/api/v2/version-group/16/"
			  }
			},
			{
			  "flavor_text": "Ein Hieb mit den Vorderbeinen oder dem Schweif.",
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "version_group": {
				"name": "omega-ruby-alpha-sapphire",
				"url": "https://pokeapi.co/api/v2/version-group/16/"
			  }
			},
			{
			  "flavor_text": "Golpea con las patas o la cola.",
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "version_group": {
				"name": "omega-ruby-alpha-sapphire",
				"url": "https://pokeapi.co/api/v2/version-group/16/"
			  }
			},
			{
			  "flavor_text": "Colpisce il bersaglio con la coda o le zampe\nanteriori.",
			  "language": {
				"name": "it",
				"url": "https://pokeapi.co/api/v2/language/8/"
			  },
			  "version_group": {
				"name": "omega-ruby-alpha-sapphire",
				"url": "https://pokeapi.co/api/v2/version-group/16/"
			  }
			},
			{
			  "flavor_text": "The target is physically pounded with\na long tail, a foreleg, or the like.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "omega-ruby-alpha-sapphire",
				"url": "https://pokeapi.co/api/v2/version-group/16/"
			  }
			},
			{
			  "flavor_text": "長い　しっぽや　手などを　使って\n相手を　はたいて　攻撃する。\n",
			  "language": {
				"name": "ja",
				"url": "https://pokeapi.co/api/v2/language/11/"
			  },
			  "version_group": {
				"name": "omega-ruby-alpha-sapphire",
				"url": "https://pokeapi.co/api/v2/version-group/16/"
			  }
			},
			{
			  "flavor_text": "ながい　しっぽや　てなどを　つかって\nあいてを　はたいて　こうげきする。",
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  },
			  "version_group": {
				"name": "sun-moon",
				"url": "https://pokeapi.co/api/v2/version-group/17/"
			  }
			},
			{
			  "flavor_text": "긴 꼬리나 손 등을 사용하여\n상대를 때려서 공격한다.",
			  "language": {
				"name": "ko",
				"url": "https://pokeapi.co/api/v2/language/3/"
			  },
			  "version_group": {
				"name": "sun-moon",
				"url": "https://pokeapi.co/api/v2/version-group/17/"
			  }
			},
			{
			  "flavor_text": "使用長長的尾巴或手等\n拍打對手進行攻擊。",
			  "language": {
				"name": "zh-Hant",
				"url": "https://pokeapi.co/api/v2/language/4/"
			  },
			  "version_group": {
				"name": "sun-moon",
				"url": "https://pokeapi.co/api/v2/version-group/17/"
			  }
			},
			{
			  "flavor_text": "Écrase l’ennemi avec les pattes avant ou la queue,\npar exemple.",
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "version_group": {
				"name": "sun-moon",
				"url": "https://pokeapi.co/api/v2/version-group/17/"
			  }
			},
			{
			  "flavor_text": "Ein Hieb mit den Vorderbeinen oder dem Schweif.",
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "version_group": {
				"name": "sun-moon",
				"url": "https://pokeapi.co/api/v2/version-group/17/"
			  }
			},
			{
			  "flavor_text": "Golpea con las patas o la cola.",
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "version_group": {
				"name": "sun-moon",
				"url": "https://pokeapi.co/api/v2/version-group/17/"
			  }
			},
			{
			  "flavor_text": "Colpisce il bersaglio con la coda o le zampe\nanteriori.",
			  "language": {
				"name": "it",
				"url": "https://pokeapi.co/api/v2/language/8/"
			  },
			  "version_group": {
				"name": "sun-moon",
				"url": "https://pokeapi.co/api/v2/version-group/17/"
			  }
			},
			{
			  "flavor_text": "The target is physically pounded with a long tail, a\nforeleg, or the like.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "sun-moon",
				"url": "https://pokeapi.co/api/v2/version-group/17/"
			  }
			},
			{
			  "flavor_text": "長い　しっぽや　手などを　使って\n相手を　はたいて　攻撃する。",
			  "language": {
				"name": "ja",
				"url": "https://pokeapi.co/api/v2/language/11/"
			  },
			  "version_group": {
				"name": "sun-moon",
				"url": "https://pokeapi.co/api/v2/version-group/17/"
			  }
			},
			{
			  "flavor_text": "使用长长的尾巴或手等\n拍打对手进行攻击。",
			  "language": {
				"name": "zh-Hans",
				"url": "https://pokeapi.co/api/v2/language/12/"
			  },
			  "version_group": {
				"name": "sun-moon",
				"url": "https://pokeapi.co/api/v2/version-group/17/"
			  }
			},
			{
			  "flavor_text": "ながい　しっぽや　てなどを　つかって\nあいてを　はたいて　こうげきする。",
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  },
			  "version_group": {
				"name": "ultra-sun-ultra-moon",
				"url": "https://pokeapi.co/api/v2/version-group/18/"
			  }
			},
			{
			  "flavor_text": "긴 꼬리나 손 등을 사용하여\n상대를 때려서 공격한다.",
			  "language": {
				"name": "ko",
				"url": "https://pokeapi.co/api/v2/language/3/"
			  },
			  "version_group": {
				"name": "ultra-sun-ultra-moon",
				"url": "https://pokeapi.co/api/v2/version-group/18/"
			  }
			},
			{
			  "flavor_text": "使用長長的尾巴或手等\n拍打對手進行攻擊。",
			  "language": {
				"name": "zh-Hant",
				"url": "https://pokeapi.co/api/v2/language/4/"
			  },
			  "version_group": {
				"name": "ultra-sun-ultra-moon",
				"url": "https://pokeapi.co/api/v2/version-group/18/"
			  }
			},
			{
			  "flavor_text": "Écrase l’ennemi avec les pattes avant ou la queue,\npar exemple.",
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "version_group": {
				"name": "ultra-sun-ultra-moon",
				"url": "https://pokeapi.co/api/v2/version-group/18/"
			  }
			},
			{
			  "flavor_text": "Ein Hieb mit den Vorderbeinen oder dem Schweif.",
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "version_group": {
				"name": "ultra-sun-ultra-moon",
				"url": "https://pokeapi.co/api/v2/version-group/18/"
			  }
			},
			{
			  "flavor_text": "Golpea con las patas o la cola.",
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "version_group": {
				"name": "ultra-sun-ultra-moon",
				"url": "https://pokeapi.co/api/v2/version-group/18/"
			  }
			},
			{
			  "flavor_text": "Colpisce il bersaglio con la coda o le zampe\nanteriori.",
			  "language": {
				"name": "it",
				"url": "https://pokeapi.co/api/v2/language/8/"
			  },
			  "version_group": {
				"name": "ultra-sun-ultra-moon",
				"url": "https://pokeapi.co/api/v2/version-group/18/"
			  }
			},
			{
			  "flavor_text": "The target is physically pounded with a long tail, a\nforeleg, or the like.",
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "version_group": {
				"name": "ultra-sun-ultra-moon",
				"url": "https://pokeapi.co/api/v2/version-group/18/"
			  }
			},
			{
			  "flavor_text": "長い　しっぽや　手などを　使って\n相手を　はたいて　攻撃する。",
			  "language": {
				"name": "ja",
				"url": "https://pokeapi.co/api/v2/language/11/"
			  },
			  "version_group": {
				"name": "ultra-sun-ultra-moon",
				"url": "https://pokeapi.co/api/v2/version-group/18/"
			  }
			},
			{
			  "flavor_text": "使用长长的尾巴或手等\n拍打对手进行攻击。",
			  "language": {
				"name": "zh-Hans",
				"url": "https://pokeapi.co/api/v2/language/12/"
			  },
			  "version_group": {
				"name": "ultra-sun-ultra-moon",
				"url": "https://pokeapi.co/api/v2/version-group/18/"
			  }
			}
		  ],
		  "generation": {
			"name": "generation-i",
			"url": "https://pokeapi.co/api/v2/generation/1/"
		  },
		  "id": 1,
		  "learned_by_pokemon": [
			{
			  "name": "clefairy",
			  "url": "https://pokeapi.co/api/v2/pokemon/35/"
			},
			{
			  "name": "jigglypuff",
			  "url": "https://pokeapi.co/api/v2/pokemon/39/"
			},
			{
			  "name": "grimer",
			  "url": "https://pokeapi.co/api/v2/pokemon/88/"
			},
			{
			  "name": "muk",
			  "url": "https://pokeapi.co/api/v2/pokemon/89/"
			},
			{
			  "name": "drowzee",
			  "url": "https://pokeapi.co/api/v2/pokemon/96/"
			}
		  ],
		  "machines": [],
		  "meta": {
			"ailment": {
			  "name": "none",
			  "url": "https://pokeapi.co/api/v2/move-ailment/0/"
			},
			"ailment_chance": 0,
			"category": {
			  "name": "damage",
			  "url": "https://pokeapi.co/api/v2/move-category/0/"
			},
			"crit_rate": 0,
			"drain": 0,
			"flinch_chance": 0,
			"healing": 0,
			"max_hits": null,
			"max_turns": null,
			"min_hits": null,
			"min_turns": null,
			"stat_chance": 0
		  },
		  "name": "pound",
		  "names": [
			{
			  "language": {
				"name": "ja-Hrkt",
				"url": "https://pokeapi.co/api/v2/language/1/"
			  },
			  "name": "はたく"
			},
			{
			  "language": {
				"name": "ko",
				"url": "https://pokeapi.co/api/v2/language/3/"
			  },
			  "name": "막치기"
			},
			{
			  "language": {
				"name": "zh-Hant",
				"url": "https://pokeapi.co/api/v2/language/4/"
			  },
			  "name": "拍擊"
			},
			{
			  "language": {
				"name": "fr",
				"url": "https://pokeapi.co/api/v2/language/5/"
			  },
			  "name": "Écras’Face"
			},
			{
			  "language": {
				"name": "de",
				"url": "https://pokeapi.co/api/v2/language/6/"
			  },
			  "name": "Pfund"
			},
			{
			  "language": {
				"name": "es",
				"url": "https://pokeapi.co/api/v2/language/7/"
			  },
			  "name": "Destructor"
			},
			{
			  "language": {
				"name": "it",
				"url": "https://pokeapi.co/api/v2/language/8/"
			  },
			  "name": "Botta"
			},
			{
			  "language": {
				"name": "en",
				"url": "https://pokeapi.co/api/v2/language/9/"
			  },
			  "name": "Pound"
			},
			{
			  "language": {
				"name": "ja",
				"url": "https://pokeapi.co/api/v2/language/11/"
			  },
			  "name": "はたく"
			},
			{
			  "language": {
				"name": "zh-Hans",
				"url": "https://pokeapi.co/api/v2/language/12/"
			  },
			  "name": "拍击"
			}
		  ],
		  "past_values": [],
		  "power": 40,
		  "pp": 35,
		  "priority": 0,
		  "stat_changes": [],
		  "super_contest_effect": {
			"url": "https://pokeapi.co/api/v2/super-contest-effect/5/"
		  },
		  "target": {
			"name": "selected-pokemon",
			"url": "https://pokeapi.co/api/v2/move-target/10/"
		  },
		  "type": {
			"name": "normal",
			"url": "https://pokeapi.co/api/v2/type/1/"
		  }
		}
		"""#
	}
}
