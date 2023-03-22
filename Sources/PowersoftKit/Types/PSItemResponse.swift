//
//  File.swift
//  
//
//  Created by Andreas Loizides on 19/04/2020.
//

import Foundation

public struct PSItemResponse: Codable {
	public let apiResponse: PSAPIResponse
	public let item: PSItem

	public enum CodingKeys: String, CodingKey {
        case apiResponse = "api_response"
        case item
    }
}
public struct PSModelResponse: Codable {
	public let apiResponse: PSAPIResponse
	public let model: PSListModel

	public enum CodingKeys: String, CodingKey {
		case apiResponse = "api_response"
		case model
	}
}
