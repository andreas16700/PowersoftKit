//
//  Filter.swift
//  
//
//  Created by Andreas Loizides on 28/04/2020.
//

import Foundation

public struct Filter: Codable {
	public init(apiCredentials: PSAPICredentials, filterDefine: FilterDefine) {
		self.apiCredentials = apiCredentials
		self.filterDefine = filterDefine
	}
	
	public let apiCredentials: PSAPICredentials
	public let filterDefine: FilterDefine

	public enum CodingKeys: String, CodingKey {
        case apiCredentials = "api_credentials"
        case filterDefine = "filter_define"
    }
}


public struct FilterDefine: Codable {
	public init(onlyCounted: String, pageNumber: Int, pageSize: Int = 100, activeType: String, ecommerceType: String, categoriesSelection: String = "", departmentsSelection: String = "", itemsSupplierSelection: String = "", brandsSelection: String = "", seasonsSelection: String = "", modelsSelection: String = "", coloursSelection: String = "", sizesSelection: String = "", sizesGroupSelection: String = "", attributes1_Selection: String = "", attributes2_Selection: String = "", attributes3_Selection: String = "", attributes4_Selection: String = "", attributes5_Selection: String = "", attributes6_Selection: String = "", keywordSearchItemCode365: String = "", keywordSearchItemName: String = "") {
        self.onlyCounted = onlyCounted
        self.pageNumber = pageNumber
        self.pageSize = pageSize
        self.activeType = activeType
        self.ecommerceType = ecommerceType
        self.categoriesSelection = categoriesSelection
        self.departmentsSelection = departmentsSelection
        self.itemsSupplierSelection = itemsSupplierSelection
        self.brandsSelection = brandsSelection
        self.seasonsSelection = seasonsSelection
        self.modelsSelection = modelsSelection
        self.coloursSelection = coloursSelection
        self.sizesSelection = sizesSelection
        self.sizesGroupSelection = sizesGroupSelection
        self.attributes1_Selection = attributes1_Selection
        self.attributes2_Selection = attributes2_Selection
        self.attributes3_Selection = attributes3_Selection
        self.attributes4_Selection = attributes4_Selection
        self.attributes5_Selection = attributes5_Selection
        self.attributes6_Selection = attributes6_Selection
        self.keywordSearchItemCode365 = keywordSearchItemCode365
        self.keywordSearchItemName = keywordSearchItemName
    }
    
	public init(onlyCounted: String, pageNumber: Int, activeType: String, ecommerceType: String) {
        self.onlyCounted = onlyCounted
        self.pageNumber = pageNumber
        self.pageSize = 100
        self.activeType = activeType
        self.ecommerceType = ecommerceType
        self.categoriesSelection = ""
        self.departmentsSelection = ""
        self.itemsSupplierSelection = ""
        self.brandsSelection = ""
        self.seasonsSelection = ""
        self.modelsSelection = ""
        self.coloursSelection = ""
        self.sizesSelection = ""
        self.sizesGroupSelection = ""
        self.attributes1_Selection = ""
        self.attributes2_Selection = ""
        self.attributes3_Selection = ""
        self.attributes4_Selection = ""
        self.attributes5_Selection = ""
        self.attributes6_Selection = ""
        self.keywordSearchItemCode365 = ""
        self.keywordSearchItemName = ""
    }
    
	public let onlyCounted: String
	public let pageNumber, pageSize: Int
	public let activeType, ecommerceType, categoriesSelection, departmentsSelection: String
	public let itemsSupplierSelection, brandsSelection, seasonsSelection, modelsSelection: String
	public let coloursSelection, sizesSelection, sizesGroupSelection, attributes1_Selection: String
	public let attributes2_Selection, attributes3_Selection, attributes4_Selection, attributes5_Selection: String
	public let attributes6_Selection, keywordSearchItemCode365, keywordSearchItemName: String

    
    
	public enum CodingKeys: String, CodingKey {
        case onlyCounted = "only_counted"
        case pageNumber = "page_number"
        case pageSize = "page_size"
        case activeType = "active_type"
        case ecommerceType = "ecommerce_type"
        case categoriesSelection = "categories_selection"
        case departmentsSelection = "departments_selection"
        case itemsSupplierSelection = "items_supplier_selection"
        case brandsSelection = "brands_selection"
        case seasonsSelection = "seasons_selection"
        case modelsSelection = "models_selection"
        case coloursSelection = "colours_selection"
        case sizesSelection = "sizes_selection"
        case sizesGroupSelection = "sizes_group_selection"
        case attributes1_Selection = "attributes_1_selection"
        case attributes2_Selection = "attributes_2_selection"
        case attributes3_Selection = "attributes_3_selection"
        case attributes4_Selection = "attributes_4_selection"
        case attributes5_Selection = "attributes_5_selection"
        case attributes6_Selection = "attributes_6_selection"
        case keywordSearchItemCode365 = "keyword_search_item_code_365"
        case keywordSearchItemName = "keyword_search_item_name"
    }
}


