//
//  ListModels.swift
//  
//
//  Created by Andreas Loizides on 08/10/2022.
//

import Foundation
public struct ModelAndItsStocks:Codable{
	public init(model: [PSItem], stocks: [String : Int]) {
		self.model = model
		self.stocks = stocks
	}
	
	public let model: [PSItem]
	public let stocks: [String: Int]
}
// MARK: - PSListModels
public struct PSListModelResponse: Codable {
	public let apiResponse: PSAPIResponse
	public let listModels: [PSListModel]
	public let failedModel: PSListModel?

	public enum CodingKeys: String, CodingKey {
		case apiResponse = "api_response"
		case listModels = "list_models"
		case failedModel = "failed_model"
	}
}

// MARK: - PSListModelsCount
public struct PSListModelsCount: Codable {
	public let apiResponse: PSAPIResponse
	public let totalCountListModels: Int

	public enum CodingKeys: String, CodingKey {
		case apiResponse = "api_response"
		case totalCountListModels = "total_count_list_models"
	}
}

// MARK: - PSListModel
public struct PSListModel: Codable, Equatable {
	public init(modelCode365: String, modelName: String, modelName2: String, active: Bool, vatCode365: String, vatPercent: Int, priceExcl: Double, priceIncl: Double, specifications: String, notes: String, categoryCode365: String, categoryName: String, deptCode365: String, deptName: String, brandCode365: String, brandName: String, seasonCode365: String, seasonName: String, fabricCode365: String, fabricName: String, sizeGroupCode365: String, sizeGroupName: String, attribute1_Code365: String, attribute1_Name: String, attribute2_Code365: String, attribute2_Name: String, attribute3_Code365: String, attribute3_Name: String, attribute4_Code365: String, attribute4_Name: String, attribute5_Code365: String, attribute5_Name: String, attribute6_Code365: String, attribute6_Name: String, umCode365: String, umName: String, modelLength: Double, modelWidth: Double, modelHeight: Double, modelVolume: Double, modelWeight: Double, booleanField1_Value: Bool, booleanField2_Value: Bool, booleanField3_Value: Bool, booleanField4_Value: Bool, booleanField5_Value: Bool, textField1_Value: String, textField2_Value: String, textField3_Value: String, textField4_Value: String, textField5_Value: String, numberField1_Value: Double, numberField2_Value: Double, numberField3_Value: Double, numberField4_Value: Double, numberField5_Value: Double, dateField1_Value: String, dateField2_Value: String, dateField3_Value: String, dateField4_Value: String, dateField5_Value: String) {
		self.modelCode365 = modelCode365
		self.modelName = modelName
		self.modelName2 = modelName2
		self.active = active
		self.vatCode365 = vatCode365
		self.vatPercent = vatPercent
		self.priceExcl = priceExcl
		self.priceIncl = priceIncl
		self.specifications = specifications
		self.notes = notes
		self.categoryCode365 = categoryCode365
		self.categoryName = categoryName
		self.deptCode365 = deptCode365
		self.deptName = deptName
		self.brandCode365 = brandCode365
		self.brandName = brandName
		self.seasonCode365 = seasonCode365
		self.seasonName = seasonName
		self.fabricCode365 = fabricCode365
		self.fabricName = fabricName
		self.sizeGroupCode365 = sizeGroupCode365
		self.sizeGroupName = sizeGroupName
		self.attribute1_Code365 = attribute1_Code365
		self.attribute1_Name = attribute1_Name
		self.attribute2_Code365 = attribute2_Code365
		self.attribute2_Name = attribute2_Name
		self.attribute3_Code365 = attribute3_Code365
		self.attribute3_Name = attribute3_Name
		self.attribute4_Code365 = attribute4_Code365
		self.attribute4_Name = attribute4_Name
		self.attribute5_Code365 = attribute5_Code365
		self.attribute5_Name = attribute5_Name
		self.attribute6_Code365 = attribute6_Code365
		self.attribute6_Name = attribute6_Name
		self.umCode365 = umCode365
		self.umName = umName
		self.modelLength = modelLength
		self.modelWidth = modelWidth
		self.modelHeight = modelHeight
		self.modelVolume = modelVolume
		self.modelWeight = modelWeight
		self.booleanField1_Value = booleanField1_Value
		self.booleanField2_Value = booleanField2_Value
		self.booleanField3_Value = booleanField3_Value
		self.booleanField4_Value = booleanField4_Value
		self.booleanField5_Value = booleanField5_Value
		self.textField1_Value = textField1_Value
		self.textField2_Value = textField2_Value
		self.textField3_Value = textField3_Value
		self.textField4_Value = textField4_Value
		self.textField5_Value = textField5_Value
		self.numberField1_Value = numberField1_Value
		self.numberField2_Value = numberField2_Value
		self.numberField3_Value = numberField3_Value
		self.numberField4_Value = numberField4_Value
		self.numberField5_Value = numberField5_Value
		self.dateField1_Value = dateField1_Value
		self.dateField2_Value = dateField2_Value
		self.dateField3_Value = dateField3_Value
		self.dateField4_Value = dateField4_Value
		self.dateField5_Value = dateField5_Value
	}
	
	public let modelCode365, modelName, modelName2: String
	public let active: Bool
	public let vatCode365: String
	public let vatPercent: Int
	public let priceExcl: Double
	public let priceIncl: Double
	public let specifications, notes, categoryCode365, categoryName: String
	public let deptCode365, deptName, brandCode365, brandName: String
	public let seasonCode365, seasonName, fabricCode365, fabricName: String
	public let sizeGroupCode365, sizeGroupName, attribute1_Code365, attribute1_Name: String
	public let attribute2_Code365, attribute2_Name, attribute3_Code365, attribute3_Name: String
	public let attribute4_Code365, attribute4_Name, attribute5_Code365, attribute5_Name: String
	public let attribute6_Code365, attribute6_Name, umCode365, umName: String
	public let modelLength, modelWidth, modelHeight, modelVolume: Double
	public let modelWeight: Double
	public let booleanField1_Value, booleanField2_Value, booleanField3_Value, booleanField4_Value: Bool
	public let booleanField5_Value: Bool
	public let textField1_Value, textField2_Value, textField3_Value, textField4_Value: String
	public let textField5_Value: String
	public let numberField1_Value, numberField2_Value, numberField3_Value, numberField4_Value: Double
	public let numberField5_Value: Double
	public let dateField1_Value, dateField2_Value, dateField3_Value, dateField4_Value: String
	public let dateField5_Value: String

	public enum CodingKeys: String, CodingKey {
		case modelCode365 = "model_code_365"
		case modelName = "model_name"
		case modelName2 = "model_name_2"
		case active
		case vatCode365 = "vat_code_365"
		case vatPercent = "vat_percent"
		case priceExcl = "price_excl"
		case priceIncl = "price_incl"
		case specifications, notes
		case categoryCode365 = "category_code_365"
		case categoryName = "category_name"
		case deptCode365 = "dept_code_365"
		case deptName = "dept_name"
		case brandCode365 = "brand_code_365"
		case brandName = "brand_name"
		case seasonCode365 = "season_code_365"
		case seasonName = "season_name"
		case fabricCode365 = "fabric_code_365"
		case fabricName = "fabric_name"
		case sizeGroupCode365 = "size_group_code_365"
		case sizeGroupName = "size_group_name"
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
		case modelLength = "model_length"
		case modelWidth = "model_width"
		case modelHeight = "model_height"
		case modelVolume = "model_volume"
		case modelWeight = "model_weight"
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
	}
}
// MARK: - PSListModelsFiltered
public struct PSListModelsFiltered: Codable {
	public init(apiCredentials: PSAPICredentials, filterDefine: PSModelFilterDefine) {
		self.apiCredentials = apiCredentials
		self.filterDefine = filterDefine
	}
	
	public let apiCredentials: PSAPICredentials
	public let filterDefine: PSModelFilterDefine

	public enum CodingKeys: String, CodingKey {
		case apiCredentials = "api_credentials"
		case filterDefine = "filter_define"
	}
}


// MARK: - PSFilterDefine
public struct PSModelFilterDefine: Codable {
	public init(onlyCounted: String, pageNumber: Int, pageSize: Int, activeType: String, ecommerceType: String, categoriesSelection: String = "", departmentsSelection: String = "", modelsSupplierSelection: String = "", brandsSelection: String = "", seasonsSelection: String = "", sizesGroupSelection: String = "", attributes1_Selection: String = "", attributes2_Selection: String = "", attributes3_Selection: String = "", attributes4_Selection: String = "", attributes5_Selection: String = "", attributes6_Selection: String = "", keywordSearchModelCode365: String = "", keywordSearchModelName: String = "", textFieldValue1_Selection: String = "", textFieldValue2_Selection: String = "", textFieldValue3_Selection: String = "", textFieldValue4_Selection: String = "", textFieldValue5_Selection: String = "", numberFieldValue1_Selection: String = "", numberFieldValue2_Selection: String = "", numberFieldValue3_Selection: String = "", numberFieldValue4_Selection: String = "", numberFieldValue5_Selection: String = "", dateFieldValue1_Selection: String = "", dateFieldValue2_Selection: String = "", dateFieldValue3_Selection: String = "", dateFieldValue4_Selection: String = "", dateFieldValue5_Selection: String = "", booleanFieldValue1: String = "", booleanFieldValue2: String = "", booleanFieldValue3: String = "", booleanFieldValue4: String = "", booleanFieldValue5: String = "", dateField1_ValueFrom: String = "", dateField1_ValueTo: String = "", dateField2_ValueFrom: String = "", dateField2_ValueTo: String = "", dateField3_ValueFrom: String = "", dateField3_ValueTo: String = "", dateField4_ValueFrom: String = "", dateField4_ValueTo: String = "", dateField5_ValueFrom: String = "", dateField5_ValueTo: String = "", lastModifiedFrom: String = "", lastModifiedTo: String = "") {
		self.onlyCounted = onlyCounted
		self.pageNumber = pageNumber
		self.pageSize = pageSize
		self.activeType = activeType
		self.ecommerceType = ecommerceType
		self.categoriesSelection = categoriesSelection
		self.departmentsSelection = departmentsSelection
		self.modelsSupplierSelection = modelsSupplierSelection
		self.brandsSelection = brandsSelection
		self.seasonsSelection = seasonsSelection
		self.sizesGroupSelection = sizesGroupSelection
		self.attributes1_Selection = attributes1_Selection
		self.attributes2_Selection = attributes2_Selection
		self.attributes3_Selection = attributes3_Selection
		self.attributes4_Selection = attributes4_Selection
		self.attributes5_Selection = attributes5_Selection
		self.attributes6_Selection = attributes6_Selection
		self.keywordSearchModelCode365 = keywordSearchModelCode365
		self.keywordSearchModelName = keywordSearchModelName
		self.textFieldValue1_Selection = textFieldValue1_Selection
		self.textFieldValue2_Selection = textFieldValue2_Selection
		self.textFieldValue3_Selection = textFieldValue3_Selection
		self.textFieldValue4_Selection = textFieldValue4_Selection
		self.textFieldValue5_Selection = textFieldValue5_Selection
		self.numberFieldValue1_Selection = numberFieldValue1_Selection
		self.numberFieldValue2_Selection = numberFieldValue2_Selection
		self.numberFieldValue3_Selection = numberFieldValue3_Selection
		self.numberFieldValue4_Selection = numberFieldValue4_Selection
		self.numberFieldValue5_Selection = numberFieldValue5_Selection
		self.dateFieldValue1_Selection = dateFieldValue1_Selection
		self.dateFieldValue2_Selection = dateFieldValue2_Selection
		self.dateFieldValue3_Selection = dateFieldValue3_Selection
		self.dateFieldValue4_Selection = dateFieldValue4_Selection
		self.dateFieldValue5_Selection = dateFieldValue5_Selection
		self.booleanFieldValue1 = booleanFieldValue1
		self.booleanFieldValue2 = booleanFieldValue2
		self.booleanFieldValue3 = booleanFieldValue3
		self.booleanFieldValue4 = booleanFieldValue4
		self.booleanFieldValue5 = booleanFieldValue5
		self.dateField1_ValueFrom = dateField1_ValueFrom
		self.dateField1_ValueTo = dateField1_ValueTo
		self.dateField2_ValueFrom = dateField2_ValueFrom
		self.dateField2_ValueTo = dateField2_ValueTo
		self.dateField3_ValueFrom = dateField3_ValueFrom
		self.dateField3_ValueTo = dateField3_ValueTo
		self.dateField4_ValueFrom = dateField4_ValueFrom
		self.dateField4_ValueTo = dateField4_ValueTo
		self.dateField5_ValueFrom = dateField5_ValueFrom
		self.dateField5_ValueTo = dateField5_ValueTo
		self.lastModifiedFrom = lastModifiedFrom
		self.lastModifiedTo = lastModifiedTo
	}
	
	public let onlyCounted: String
	public let pageNumber, pageSize: Int
	public let activeType, ecommerceType, categoriesSelection, departmentsSelection: String
	public let modelsSupplierSelection, brandsSelection, seasonsSelection, sizesGroupSelection: String
	public let attributes1_Selection, attributes2_Selection, attributes3_Selection, attributes4_Selection: String
	public let attributes5_Selection, attributes6_Selection, keywordSearchModelCode365, keywordSearchModelName: String
	public let textFieldValue1_Selection, textFieldValue2_Selection, textFieldValue3_Selection, textFieldValue4_Selection: String
	public let textFieldValue5_Selection, numberFieldValue1_Selection, numberFieldValue2_Selection, numberFieldValue3_Selection: String
	public let numberFieldValue4_Selection, numberFieldValue5_Selection, dateFieldValue1_Selection, dateFieldValue2_Selection: String
	public let dateFieldValue3_Selection, dateFieldValue4_Selection, dateFieldValue5_Selection, booleanFieldValue1: String
	public let booleanFieldValue2, booleanFieldValue3, booleanFieldValue4, booleanFieldValue5: String
	public let dateField1_ValueFrom, dateField1_ValueTo, dateField2_ValueFrom, dateField2_ValueTo: String
	public let dateField3_ValueFrom, dateField3_ValueTo, dateField4_ValueFrom, dateField4_ValueTo: String
	public let dateField5_ValueFrom, dateField5_ValueTo, lastModifiedFrom, lastModifiedTo: String

	public enum CodingKeys: String, CodingKey {
		case onlyCounted = "only_counted"
		case pageNumber = "page_number"
		case pageSize = "page_size"
		case activeType = "active_type"
		case ecommerceType = "ecommerce_type"
		case categoriesSelection = "categories_selection"
		case departmentsSelection = "departments_selection"
		case modelsSupplierSelection = "models_supplier_selection"
		case brandsSelection = "brands_selection"
		case seasonsSelection = "seasons_selection"
		case sizesGroupSelection = "sizes_group_selection"
		case attributes1_Selection = "attributes_1_selection"
		case attributes2_Selection = "attributes_2_selection"
		case attributes3_Selection = "attributes_3_selection"
		case attributes4_Selection = "attributes_4_selection"
		case attributes5_Selection = "attributes_5_selection"
		case attributes6_Selection = "attributes_6_selection"
		case keywordSearchModelCode365 = "keyword_search_model_code_365"
		case keywordSearchModelName = "keyword_search_model_name"
		case textFieldValue1_Selection = "text_field_value_1_selection"
		case textFieldValue2_Selection = "text_field_value_2_selection"
		case textFieldValue3_Selection = "text_field_value_3_selection"
		case textFieldValue4_Selection = "text_field_value_4_selection"
		case textFieldValue5_Selection = "text_field_value_5_selection"
		case numberFieldValue1_Selection = "number_field_value_1_selection"
		case numberFieldValue2_Selection = "number_field_value_2_selection"
		case numberFieldValue3_Selection = "number_field_value_3_selection"
		case numberFieldValue4_Selection = "number_field_value_4_selection"
		case numberFieldValue5_Selection = "number_field_value_5_selection"
		case dateFieldValue1_Selection = "date_field_value_1_selection"
		case dateFieldValue2_Selection = "date_field_value_2_selection"
		case dateFieldValue3_Selection = "date_field_value_3_selection"
		case dateFieldValue4_Selection = "date_field_value_4_selection"
		case dateFieldValue5_Selection = "date_field_value_5_selection"
		case booleanFieldValue1 = "boolean_field_value_1"
		case booleanFieldValue2 = "boolean_field_value_2"
		case booleanFieldValue3 = "boolean_field_value_3"
		case booleanFieldValue4 = "boolean_field_value_4"
		case booleanFieldValue5 = "boolean_field_value_5"
		case dateField1_ValueFrom = "date_field_1_value_from"
		case dateField1_ValueTo = "date_field_1_value_to"
		case dateField2_ValueFrom = "date_field_2_value_from"
		case dateField2_ValueTo = "date_field_2_value_to"
		case dateField3_ValueFrom = "date_field_3_value_from"
		case dateField3_ValueTo = "date_field_3_value_to"
		case dateField4_ValueFrom = "date_field_4_value_from"
		case dateField4_ValueTo = "date_field_4_value_to"
		case dateField5_ValueFrom = "date_field_5_value_from"
		case dateField5_ValueTo = "date_field_5_value_to"
		case lastModifiedFrom = "last_modified_from"
		case lastModifiedTo = "last_modified_to"
	}
}
