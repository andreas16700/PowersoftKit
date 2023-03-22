//
//  File.swift
//  
//
//  Created by Andreas Loizides on 24/06/2021.
//

import Foundation
public enum ActiveType: String{
	case all
	case active
	case inactive
}
public enum eCommerceType: String{
	case all
	case eCommerceOnly
	case NoteCommerce
}

public struct PSCountResponse:Codable{
	public let apiResponse: PSAPIResponse
	public let totalCountListItems: Int
	
	public enum CodingKeys: String, CodingKey {
	case apiResponse = "api_response"
	case totalCountListItems = "total_count_list_items"
	}
}

public struct ListItemWFilterResponse: Codable {
	public let apiResponse: PSAPIResponse
	public let totalCountListItems: Int
	public let listItems: [PSItem]?
	public let failedItem: PSItem?

	public enum CodingKeys: String, CodingKey {
		case apiResponse = "api_response"
		case totalCountListItems = "total_count_list_items"
		case listItems = "list_items"
		case failedItem = "failed_item"
	}
}
