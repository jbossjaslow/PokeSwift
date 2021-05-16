//
//  PagedList.swift
//  
//
//  Created by Josh Jaslow on 5/16/21.
//

struct PagedList<Resource: BaseResourceProtocol>: BaseResourceProtocol {
	var count: Int
	var next: String?
	var previous: String?
	var results: [NamedAPIResource<Resource>]
}
