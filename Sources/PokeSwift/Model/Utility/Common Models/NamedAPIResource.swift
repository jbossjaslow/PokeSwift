//
//  File.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

public struct NamedAPIResource<Type: BaseResourceProtocol>: BaseResourceProtocol {
	/// The name of the referenced resource.
	public let name: String
	/// The URL of the referenced resource.
	public let url: String
}
