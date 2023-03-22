//
//  File.swift
//  
//
//  Created by Andreas Loizides on 19/04/2020.
//

import Foundation
// MARK: - PSSyncItemsResponse
public struct PSSyncItemsResponse: Codable {
	public let apiResponse: PSAPIResponse
	public let listSyncItems: [PSListSyncItem]

	public enum CodingKeys: String, CodingKey {
        case apiResponse = "api_response"
        case listSyncItems = "list_sync_items"
    }
}


// MARK: - PSListSyncItem
public struct PSListSyncItem: Codable {
	public let changeID365: Int
	public let changeDateTimeUtc0: String
	public let changeTypeCode: PSChangeTypeCode
	public let itemCode365, itemName, itemName2: String
	public let active, ecommerce: Bool
	public let vatCode365: String
	public let vatPercent: Int
	public let priceExcl1, priceIncl1, priceExcl2, priceIncl2: Double
	public let priceExcl3, priceIncl3, priceExcl4, priceIncl4: Double
	public let priceExcl5, priceIncl5, priceExcl6, priceIncl6: Double
	public let priceExcl7, priceIncl7, priceExcl8, priceIncl8: Double
	public let priceExcl9, priceIncl9, priceExcl10, priceIncl10: Double
	public let itemCost, itemAverageCost, itemWeighetdAverageCost: Double
	public let specifications, notes, categoryCode365: String
	public let categoryName: String
	public let deptCode365, deptName, brandCode365: String
	public let brandName: String
	public let seasonCode365, seasonName, colorCode365, colorName: String
	public let sizeCode365, sizeName, modelCode365: String
	public let attribute1_Code365, attribute1_Name: String
	public let attribute2_Code365: String
	public let attribute2_Name: String
	public let attribute3_Code365, attribute3_Name: String
	public let attribute4_Code365, attribute4_Name, attribute5_Code365, attribute5_Name: String
	public let attribute6_Code365, attribute6_Name, umCode365: String
	public let itemLength, itemWidth, itemHeight, itemVolume: Int
	public let itemWeight, numberOfPieces: Int
	public let isWeighted, booleanField1_Value, booleanField2_Value, booleanField3_Value: Bool
	public let booleanField4_Value, booleanField5_Value: Bool
	public let textField1_Value, textField2_Value, textField3_Value, textField4_Value: String
	public let textField5_Value: String
	public let numberField1_Value, numberField2_Value, numberField3_Value, numberField4_Value: Int
	public let numberField5_Value: Int
	public let dateField1_Value, dateField2_Value, dateField3_Value, dateField4_Value: String
	public let dateField5_Value: String
	public let totalStock, totalStockReserved, totalStockOrdered, maximumPurchasePrice: Int
	public let minimumSellingPrice, minimumOrderMultiplier: Int
	public let storable: Bool
	public let listSyncItemBarcodes: [PSListItemBarcode]

	public enum CodingKeys: String, CodingKey {
        case changeID365 = "change_id_365"
        case changeDateTimeUtc0 = "change_date_time_utc0"
        case changeTypeCode = "change_type_code"
        case itemCode365 = "item_code_365"
        case itemName = "item_name"
        case itemName2 = "item_name_2"
        case active, ecommerce
        case vatCode365 = "vat_code_365"
        case vatPercent = "vat_percent"
        case priceExcl1 = "price_excl_1"
        case priceIncl1 = "price_incl_1"
        case priceExcl2 = "price_excl_2"
        case priceIncl2 = "price_incl_2"
        case priceExcl3 = "price_excl_3"
        case priceIncl3 = "price_incl_3"
        case priceExcl4 = "price_excl_4"
        case priceIncl4 = "price_incl_4"
        case priceExcl5 = "price_excl_5"
        case priceIncl5 = "price_incl_5"
        case priceExcl6 = "price_excl_6"
        case priceIncl6 = "price_incl_6"
        case priceExcl7 = "price_excl_7"
        case priceIncl7 = "price_incl_7"
        case priceExcl8 = "price_excl_8"
        case priceIncl8 = "price_incl_8"
        case priceExcl9 = "price_excl_9"
        case priceIncl9 = "price_incl_9"
        case priceExcl10 = "price_excl_10"
        case priceIncl10 = "price_incl_10"
        case itemCost = "item_cost"
        case itemAverageCost = "item_average_cost"
        case itemWeighetdAverageCost = "item_weighetd_average_cost"
        case specifications, notes
        case categoryCode365 = "category_code_365"
        case categoryName = "category_name"
        case deptCode365 = "dept_code_365"
        case deptName = "dept_name"
        case brandCode365 = "brand_code_365"
        case brandName = "brand_name"
        case seasonCode365 = "season_code_365"
        case seasonName = "season_name"
        case colorCode365 = "color_code_365"
        case colorName = "color_name"
        case sizeCode365 = "size_code_365"
        case sizeName = "size_name"
        case modelCode365 = "model_code_365"
        case attribute1_Code365 = "attribute_1_code_365"
        case attribute1_Name = "attribute_1_name"
        case attribute2_Code365 = "attribute_2_code_365"
        case attribute2_Name = "attribute_2_name"
        case attribute3_Code365 = "attribute_3_code_365"
        case attribute3_Name = "attribute_3_name"
        case attribute4_Code365 = "attribute_4_code_365"
        case attribute4_Name = "attribute_4_name"
        case attribute5_Code365 = "attribute_5_code_365"
        case attribute5_Name = "attribute_5_name"
        case attribute6_Code365 = "attribute_6_code_365"
        case attribute6_Name = "attribute_6_name"
        case umCode365 = "um_code_365"
        case itemLength = "item_length"
        case itemWidth = "item_width"
        case itemHeight = "item_height"
        case itemVolume = "item_volume"
        case itemWeight = "item_weight"
        case numberOfPieces = "number_of_pieces"
        case isWeighted = "is_weighted"
        case booleanField1_Value = "boolean_field_1_value"
        case booleanField2_Value = "boolean_field_2_value"
        case booleanField3_Value = "boolean_field_3_value"
        case booleanField4_Value = "boolean_field_4_value"
        case booleanField5_Value = "boolean_field_5_value"
        case textField1_Value = "text_field_1_value"
        case textField2_Value = "text_field_2_value"
        case textField3_Value = "text_field_3_value"
        case textField4_Value = "text_field_4_value"
        case textField5_Value = "text_field_5_value"
        case numberField1_Value = "number_field_1_value"
        case numberField2_Value = "number_field_2_value"
        case numberField3_Value = "number_field_3_value"
        case numberField4_Value = "number_field_4_value"
        case numberField5_Value = "number_field_5_value"
        case dateField1_Value = "date_field_1_value"
        case dateField2_Value = "date_field_2_value"
        case dateField3_Value = "date_field_3_value"
        case dateField4_Value = "date_field_4_value"
        case dateField5_Value = "date_field_5_value"
        case totalStock = "total_stock"
        case totalStockReserved = "total_stock_reserved"
        case totalStockOrdered = "total_stock_ordered"
        case maximumPurchasePrice = "maximum_purchase_price"
        case minimumSellingPrice = "minimum_selling_price"
        case minimumOrderMultiplier = "minimum_order_multiplier"
        case storable
        case listSyncItemBarcodes = "list_sync_item_barcodes"
    }
}




public enum PSChangeTypeCode: String, Codable {
    case add = "ADD"
    case edit = "EDIT"
    case remove = "REMOVE"
}


// MARK: - PSListSyncItemBarcode
public struct PSListSyncItemBarcode: Codable {
	public let barcode: String
	public let isLabelBarcode, isEan13: Bool

	public enum CodingKeys: String, CodingKey {
        case barcode
        case isLabelBarcode = "is_label_barcode"
        case isEan13 = "is_ean_13"
    }
}
