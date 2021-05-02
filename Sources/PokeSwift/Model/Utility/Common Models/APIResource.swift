//
//  File.swift
//  
//
//  Created by Josh Jaslow on 4/8/21.
//

public struct APIResource<Type: BaseResourceProtocol>: BaseResourceProtocol {
	/// The URL of the referenced resource.
	public let url: String
}
