//
//  PSItem.swift
//  
//
//  Created by Andreas Loizides on 01/06/2021.
//

import Foundation
public struct PSAPIResponse: Codable {
	public let responseCode, responseMsg, responseID: String

	enum CodingKeys: String, CodingKey {
		case responseCode = "response_code"
		case responseMsg = "response_msg"
		case responseID = "response_id"
	}
}




// MARK: - PSItem
public struct PSItem: Codable, Hashable, Identifiable {
	public var id: String {return itemCode365}
	
	public static func == (lhs: PSItem, rhs: PSItem) -> Bool {
		return lhs.itemCode365 == rhs.itemCode365
	}
	public func hash(into hasher: inout Hasher) {
		hasher.combine(itemCode365)
	}
	
	public var itemCode365, itemName, itemName2: String
	public let active: Bool
	public var stockStatus001: PSListStockStoresItem?
	public let vatCode365: String
	public let vatPercent: Int
	public let priceExcl1: Double
	public var priceIncl1: Double
	public let priceExcl2: Double
	public let priceIncl2: Double
	public let priceExcl3: Double
	public var priceIncl3: Double
	public let priceExcl4: Double
	public let priceIncl4: Double
	public let priceExcl5: Double
	public let priceIncl5: Double
	public let priceExcl6: Double
	public let priceIncl6: Double
	public let priceExcl7: Double
	public let priceIncl7: Double
	public let priceExcl8: Double
	public let priceIncl8: Double
	public let priceExcl9: Double
	public let priceIncl9: Double
	public let priceExcl10: Double
	public let priceIncl10: Double
	public let specifications, notes, categoryCode365, categoryName: String
	public let deptCode365, deptName, brandCode365, brandName: String
	public var seasonCode365, seasonName, colorCode365, colorName: String
	public var colorHTML, sizeCode365, sizeName, sizeNameInvoice: String
	public var modelCode365, modelName, attribute1_Code365, attribute1_Name: String
	public let attribute2_Code365, attribute2_Name, attribute3_Code365, attribute3_Name: String
	public let attribute4_Code365, attribute4_Name, attribute5_Code365, attribute5_Name: String
	public let attribute6_Code365, attribute6_Name, umCode365, umName: String
	public let itemLength, itemWidth, itemHeight, itemVolume: Double
	public let itemWeight, numberOfPieces: Double
	public let booleanField1_Value, booleanField2_Value, booleanField3_Value, booleanField4_Value: Bool
	public let booleanField5_Value: Bool
	public let textField1_Value, textField2_Value, textField3_Value, textField4_Value: String
	public let textField5_Value: String
	public let numberField1_Value, numberField2_Value, numberField3_Value, numberField4_Value: Int
	public let numberField5_Value: Int
	public let dateField1_Value, dateField2_Value, dateField3_Value, dateField4_Value: String
	public let dateField5_Value: String
	public let totalStock, totalStockReserved, totalStockOrdered: Int?
	public var listItemBarcodes: [PSListItemBarcode]

	public enum CodingKeys: String, CodingKey {
		case itemCode365 = "item_code_365"
		case itemName = "item_name"
		case itemName2 = "item_name_2"
		case active
		case stockStatus001 = "stockStatus001"
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
		case colorHTML = "color_html"
		case sizeCode365 = "size_code_365"
		case sizeName = "size_name"
		case sizeNameInvoice = "size_name_invoice"
		case modelCode365 = "model_code_365"
		case modelName = "model_name"
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
		case umName = "um_name"
		case itemLength = "item_length"
		case itemWidth = "item_width"
		case itemHeight = "item_height"
		case itemVolume = "item_volume"
		case itemWeight = "item_weight"
		case numberOfPieces = "number_of_pieces"
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
		case listItemBarcodes = "list_item_barcodes"
	}
	
	public func printItem()->String{
		let desc = """
		Code:        \(self.itemCode365)
		Category     \(self.categoryName)
		Name:        \(self.itemName)
		Model:       \(self.modelName)
		Brand:       \(self.brandName)
		Price:       \(self.priceIncl1)
		Size:        \(self.sizeName)
		Color:       \(self.colorName)
		Active:      \(self.active)
		Attr1:       \(self.attribute1_Name)
		Attr2:       \(self.attribute2_Name)
		Attr3:       \(self.attribute3_Name)
		barcodes:    \(self.listItemBarcodes)
		
		"""
		return desc
	}
	
}
// MARK: - PSListItemBarcode
public struct PSListItemBarcode: Codable, Hashable {
	public init(barcode: String, isLabelBarcode: Bool, isEan13: Bool) {
		self.barcode = barcode
		self.isLabelBarcode = isLabelBarcode
		self.isEan13 = isEan13
	}
	
	public var barcode: String
	public let isLabelBarcode, isEan13: Bool

	public enum CodingKeys: String, CodingKey {
		case barcode
		case isLabelBarcode = "is_label_barcode"
		case isEan13 = "is_ean_13"
	}
}


public struct GetItemBarcode: Codable, Identifiable {
	public var id = UUID()
	public let barcode, isEan13, isLabelBarcode: String

	public enum CodingKeys: String, CodingKey {
		case barcode
		case isEan13 = "is_ean_13"
		case isLabelBarcode = "is_label_barcode"
	}
}
