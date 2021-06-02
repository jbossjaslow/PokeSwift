//
//  PagedList.swift
//  
//
//  Created by Josh Jaslow on 5/16/21.
//

public struct PagedList<Resource: BaseResourceProtocol>: BaseResourceProtocol {
	public var count: Int
	public var next: String?
	public var previous: String?
	public var results: [NamedAPIResource<Resource>]
}
