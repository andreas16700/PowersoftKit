//
//  File.swift
//  
//
//  Created by Andreas Loizides on 03/05/2020.
//

import Foundation
public struct PSStockResponse: Codable {
	public let apiResponse: PSAPIResponse
	public let listStockStoresItem: [PSListStockStoresItem]

	public enum CodingKeys: String, CodingKey {
        case apiResponse = "api_response"
        case listStockStoresItem = "list_stock_stores_item"
    }
}



// MARK: - PSListStockStoresItem
public struct PSListStockStoresItem: Codable, Hashable {
	public init(storeCode365: String, storeName: String, storeActive: Bool, itemCode365: String, modelCode365: String, itemName: String, stock: Int, stockOnTransfer: Int, stockReserved: Int, stockOrdered: Int, mininumStock: Int, requiredStock: Int) {
		self.storeCode365 = storeCode365
		self.storeName = storeName
		self.storeActive = storeActive
		self.itemCode365 = itemCode365
		self.modelCode365 = modelCode365
		self.itemName = itemName
		self.stock = stock
		self.stockOnTransfer = stockOnTransfer
		self.stockReserved = stockReserved
		self.stockOrdered = stockOrdered
		self.mininumStock = mininumStock
		self.requiredStock = requiredStock
	}
	
	public var storeCode365, storeName: String
	public var storeActive: Bool
	public var itemCode365, modelCode365, itemName: String
	public var stock, stockOnTransfer, stockReserved, stockOrdered: Int
	public var mininumStock, requiredStock: Int

	public enum CodingKeys: String, CodingKey {
        case storeCode365 = "store_code_365"
        case storeName = "store_name"
        case storeActive = "store_active"
        case itemCode365 = "item_code_365"
        case modelCode365 = "model_code_365"
        case itemName = "item_name"
        case stock
        case stockOnTransfer = "stock_on_transfer"
        case stockReserved = "stock_reserved"
        case stockOrdered = "stock_ordered"
        case mininumStock = "mininum_stock"
        case requiredStock = "required_stock"
    }
}
