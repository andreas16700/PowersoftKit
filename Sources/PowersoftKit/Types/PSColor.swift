//
//  PSColor.swift
//  
//
//  Created by Andreas Loizides on 27/04/2020.
//

import Foundation

public struct PSColor: Codable {
	public let colorCode365, colorName, colorSecondaryCode, colorHTML: String

	public enum CodingKeys: String, CodingKey {
        case colorCode365 = "color_code_365"
        case colorName = "color_name"
        case colorSecondaryCode = "color_secondary_code"
        case colorHTML = "color_html"
    }
}
public struct PSColorResponse: Codable{
	public let api_response: PSAPIResponse
	public let list_colors: [PSColor]
}
