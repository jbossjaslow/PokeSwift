//
//  File.swift
//  
//
//  Created by Josh Jaslow on 5/1/21.
//

import XCTest
@testable import PokeSwift

final class JSONDecodingTests: XCTestCase {
//	let allRequestableModels: [Requestable.Type] = [
//		Berry.self,
//		BerryFirmness.self,
//		BerryFlavor.self,
//		ContestEffect.self,
//		ContestType.self,
//		SuperContestEffect.self,
//		EncounterCondition.self,
//		EncounterConditionValue.self,
//		EncounterMethod.self,
//		EvolutionChain.self,
//		EvolutionTrigger.self,
//		Generation.self,
//		Pokedex.self,
//		Version.self,
//		VersionGroup.self,
//		Item.self,
//		ItemAttribute.self,
//		ItemCategory.self,
//		ItemFlingEffect.self,
//		ItemPocket.self,
//		Location.self,
//		LocationArea.self,
//		PalParkArea.self,
//		Region.self,
//		Machine.self,
//		Move.self,
//		MoveAilment.self,
//		MoveBattleStyle.self,
//		MoveCategory.self,
//		MoveDamageClass.self,
//		MoveLearnMethod.self,
//		MoveTarget.self,
//		Ability.self,
//		Characteristic.self,
//		EggGroup.self,
//		Gender.self,
//		GrowthRate.self,
//		LocationAreaEncounter.self,
//		Nature.self,
//		PokeathlonStat.self,
//		Pokemon.self,
//		PokemonColor.self,
//		PokemonForm.self,
//		PokemonHabitat.self,
//		PokemonShape.self,
//		PokemonSpecies.self,
//		Stat.self,
//		Type.self,
//		Language.self
//	]
	
	override func setUp() {
		super.setUp()
	}
	
	override func tearDown() {
		super.tearDown()
	}
	
	static var allTests = [
//		("testBerryDecoding", testBerryDecoding),
//		("testBerryFirmnessDecoding", testBerryFirmnessDecoding),
//		("testBerryFlavorDecoding", testBerryFlavorDecoding),
//		("testContestEffectDecoding", testContestEffectDecoding),
//		("testContestTypeDecoding", testContestTypeDecoding),
//		("testSuperContestEffectDecoding", testSuperContestEffectDecoding),
//		("testEncounterConditionDecoding", testEncounterConditionDecoding),
//		("testEncounterConditionValueDecoding", testEncounterConditionValueDecoding),
//		("testEncounterMethodDecoding", testEncounterMethodDecoding),
//		("testEvolutionChainDecoding", testEvolutionChainDecoding),
//		("testEvolutionTriggerDecoding", testEvolutionTriggerDecoding),
//		("testGenerationDecoding", testGenerationDecoding),
//		("testPokedexDecoding", testPokedexDecoding),
//		("testVersionDecoding", testVersionDecoding),
//		("testVersionGroupDecoding", testVersionGroupDecoding),
//		("testItemDecoding", testItemDecoding),
//		("testItemAttributeDecoding", testItemAttributeDecoding),
//		("testItemCategoryDecoding", testItemCategoryDecoding),
//		("testItemFlingEffectDecoding", testItemFlingEffectDecoding),
//		("testItemPocketDecoding", testItemPocketDecoding),
//		("testLocationDecoding", testLocationDecoding),
//		("testLocationAreaDecoding", testLocationAreaDecoding),
//		("testPalParkAreaDecoding", testPalParkAreaDecoding),
//		("testRegionDecoding", testRegionDecoding),
//		("testMachineDecoding", testMachineDecoding),
		("testMoveDecoding", testMoveDecoding),
//		("testMoveAilmentDecoding", testMoveAilmentDecoding),
//		("testMoveBattleStyleDecoding", testMoveBattleStyleDecoding),
//		("testMoveCategoryDecoding", testMoveCategoryDecoding),
//		("testMoveDamageClassDecoding", testMoveDamageClassDecoding),
//		("testMoveLearnMethodDecoding", testMoveLearnMethodDecoding),
//		("testMoveTargetDecoding", testMoveTargetDecoding),
//		("testAbilityDecoding", testAbilityDecoding),
//		("testCharacteristicDecoding", testCharacteristicDecoding),
//		("testEggGroupDecoding", testEggGroupDecoding),
//		("testGenderDecoding", testGenderDecoding),
//		("testGrowthRateDecoding", testGrowthRateDecoding),
//		("testLocationAreaEncounterDecoding", testLocationAreaEncounterDecoding),
//		("testNatureDecoding", testNatureDecoding),
//		("testPokeathlonStatDecoding", testPokeathlonStatDecoding),
//		("testPokemonDecoding", testPokemonDecoding),
//		("testPokemonColorDecoding", testPokemonColorDecoding),
//		("testPokemonFormDecoding", testPokemonFormDecoding),
//		("testPokemonHabitatDecoding", testPokemonHabitatDecoding),
//		("testPokemonShapeDecoding", testPokemonShapeDecoding),
//		("testPokemonSpeciesDecoding", testPokemonSpeciesDecoding),
//		("testStatDecoding", testStatDecoding),
//		("testTypeDecoding", testTypeDecoding),
//		("testLanguageDecoding", testLanguageDecoding),
	]
	
	//MARK: - Test JSON decoding
	/*
	func testBerryDecoding() throws {
		let model = Berry.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Berry, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testBerryFirmnessDecoding() throws {
		let model = BerryFirmness.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<BerryFirmness, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testBerryFlavorDecoding() throws {
		let model = BerryFlavor.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<BerryFlavor, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testContestEffectDecoding() throws {
		let model = ContestEffect.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<ContestEffect, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testContestTypeDecoding() throws {
		let model = ContestType.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<ContestType, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testSuperContestEffectDecoding() throws {
		let model = SuperContestEffect.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<SuperContestEffect, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testEncounterConditionDecoding() throws {
		let model = EncounterCondition.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<EncounterCondition, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testEncounterConditionValueDecoding() throws {
		let model = EncounterConditionValue.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<EncounterConditionValue, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testEncounterMethodDecoding() throws {
		let model = EncounterMethod.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<EncounterMethod, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testEvolutionChainDecoding() throws {
		let model = EvolutionChain.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<EvolutionChain, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testEvolutionTriggerDecoding() throws {
		let model = EvolutionTrigger.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<EvolutionTrigger, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testGenerationDecoding() throws {
		let model = Generation.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Generation, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testPokedexDecoding() throws {
		let model = Pokedex.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Pokedex, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testVersionDecoding() throws {
		let model = Version.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Version, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testVersionGroupDecoding() throws {
		let model = VersionGroup.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<VersionGroup, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testItemDecoding() throws {
		let model = Item.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Item, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testItemAttributeDecoding() throws {
		let model = ItemAttribute.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<ItemAttribute, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testItemCategoryDecoding() throws {
		let model = ItemCategory.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<ItemCategory, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testItemFlingEffectDecoding() throws {
		let model = ItemFlingEffect.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<ItemFlingEffect, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testItemPocketDecoding() throws {
		let model = ItemPocket.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<ItemPocket, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testLocationDecoding() throws {
		let model = Location.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Location, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testLocationAreaDecoding() throws {
		let model = LocationArea.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<LocationArea, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testPalParkAreaDecoding() throws {
		let model = PalParkArea.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<PalParkArea, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testRegionDecoding() throws {
		let model = Region.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Region, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testMachineDecoding() throws {
		let model = Machine.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Machine, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}*/
	
	func testMoveDecoding() {
		do {
			let model = Move.testResponse
			let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
			let move: Move = try SessionManager.decodeJSON(from: modelData)
			let learnedByPokemon: [NamedAPIResource<Pokemon>] = try XCTUnwrap(move.learnedByPokemon)
			XCTAssertTrue(!learnedByPokemon.isEmpty)
		} catch {
			XCTFail(error.localizedDescription)
		}
	}
	
	/*func testMoveAilmentDecoding() throws {
		let model = MoveAilment.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<MoveAilment, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testMoveBattleStyleDecoding() throws {
		let model = MoveBattleStyle.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<MoveBattleStyle, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testMoveCategoryDecoding() throws {
		let model = MoveCategory.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<MoveCategory, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testMoveDamageClassDecoding() throws {
		let model = MoveDamageClass.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<MoveDamageClass, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testMoveLearnMethodDecoding() throws {
		let model = MoveLearnMethod.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<MoveLearnMethod, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testMoveTargetDecoding() throws {
		let model = MoveTarget.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<MoveTarget, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testAbilityDecoding() throws {
		let model = Ability.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Ability, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testCharacteristicDecoding() throws {
		let model = Characteristic.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Characteristic, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testEggGroupDecoding() throws {
		let model = EggGroup.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<EggGroup, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testGenderDecoding() throws {
		let model = Gender.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Gender, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testGrowthRateDecoding() throws {
		let model = GrowthRate.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<GrowthRate, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testLocationAreaEncounterDecoding() throws {
		let model = LocationAreaEncounter.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<LocationAreaEncounter, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testNatureDecoding() throws {
		let model = Nature.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Nature, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testPokeathlonStatDecoding() throws {
		let model = PokeathlonStat.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<PokeathlonStat, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testPokemonDecoding() throws {
		let model = Pokemon.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Pokemon, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testPokemonColorDecoding() throws {
		let model = PokemonColor.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<PokemonColor, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testPokemonFormDecoding() throws {
		let model = PokemonForm.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<PokemonForm, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testPokemonHabitatDecoding() throws {
		let model = PokemonHabitat.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<PokemonHabitat, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testPokemonShapeDecoding() throws {
		let model = PokemonShape.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<PokemonShape, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testPokemonSpeciesDecoding() throws {
		let model = PokemonSpecies.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<PokemonSpecies, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testStatDecoding() throws {
		let model = Stat.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Stat, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testTypeDecoding() throws {
		let model = Type.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Type, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	
	func testLanguageDecoding() throws {
		let model = Language.testResponse
		let modelData = try XCTUnwrap(model.data(using: .utf8), "Should be able to decode model")
		SessionManager.decodeJSON(from: modelData) { (_ result: Result<Language, APIError>) in
			switch result {
				case .success(_):
					XCTAssertTrue(true, "Show that test passed")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}
	}
	 */
}

extension JSONDecodingTests {
	private func readLocalFile(forName name: String) -> Data? {
		do {
			if let bundlePath = Bundle.main.path(forResource: name,
												 ofType: "json"),
			   let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
				return jsonData
			}
		} catch {
			print(error.localizedDescription)
		}
		
		return nil
	}
}
