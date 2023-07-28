//
//  File.swift
//  
//
//  Created by Andreas Loizides on 19/04/2020.
//

import Foundation

var modelNameGenerator:(Int)->String = {
    return "model"+UUID().uuidString.prefix($0)
}

public extension PSItem{
//	static func convertFrom(syncItem item: PSListSyncItem)->PSItem{
//        return PSItem(itemCode365: item.itemCode365, itemName: item.itemName, itemName2: item.itemName2, active: item.active, vatCode365: item.vatCode365, vatPercent: item.vatPercent, priceExcl1: item.priceExcl1, priceIncl1: item.priceIncl1, priceExcl2: item.priceExcl2, priceIncl2: item.priceIncl2, priceExcl3: item.priceExcl3, priceIncl3: item.priceIncl3, priceExcl4: item.priceExcl4, priceIncl4: item.priceIncl4, priceExcl5: item.priceExcl5, priceIncl5: item.priceIncl5, priceExcl6: item.priceExcl6, priceIncl6: item.priceIncl6, priceExcl7: item.priceExcl7, priceIncl7: item.priceIncl7, priceExcl8: item.priceExcl8, priceIncl8: item.priceIncl8, priceExcl9: item.priceExcl9, priceIncl9: item.priceIncl9, priceExcl10: item.priceExcl10, priceIncl10: item.priceIncl10, specifications: item.specifications, notes: item.notes, categoryCode365: item.categoryCode365, categoryName: item.categoryName, deptCode365: item.deptCode365, deptName: item.deptName, brandCode365: item.brandCode365, brandName: item.brandName, seasonCode365: item.seasonCode365, seasonName: item.seasonName, colorCode365: item.colorCode365, colorName: item.colorName, colorHTML: "NV", sizeCode365: item.sizeCode365, sizeName: item.sizeName, sizeNameInvoice: item.sizeName, modelCode365: item.modelCode365, modelName: item.itemName, attribute1_Code365: item.attribute1_Code365, attribute1_Name: item.attribute1_Name, attribute2_Code365: item.attribute2_Code365, attribute2_Name: item.attribute2_Name, attribute3_Code365: item.attribute3_Code365, attribute3_Name: item.attribute3_Name, attribute4_Code365: item.attribute4_Code365, attribute4_Name: item.attribute4_Name, attribute5_Code365: item.attribute5_Code365, attribute5_Name: item.attribute5_Name, attribute6_Code365: item.attribute6_Code365, attribute6_Name: item.attribute6_Name, umCode365: item.umCode365, umName: "NV", itemLength: Double(item.itemLength), itemWidth: Double(item.itemWidth), itemHeight: Double(item.itemHeight), itemVolume: Double(item.itemVolume), itemWeight: Double(item.itemWeight), numberOfPieces: Double(item.numberOfPieces), booleanField1_Value: item.booleanField1_Value, booleanField2_Value: item.booleanField2_Value, booleanField3_Value: item.booleanField3_Value, booleanField4_Value: item.booleanField4_Value, booleanField5_Value: item.booleanField5_Value, textField1_Value: item.textField1_Value, textField2_Value: item.textField2_Value, textField3_Value: item.textField3_Value, textField4_Value: item.textField4_Value, textField5_Value: item.textField5_Value, numberField1_Value: item.numberField1_Value, numberField2_Value: item.numberField2_Value, numberField3_Value: item.numberField3_Value, numberField4_Value: item.numberField4_Value, numberField5_Value: item.numberField5_Value, dateField1_Value: item.dateField1_Value, dateField2_Value: item.dateField2_Value, dateField3_Value: item.dateField3_Value, dateField4_Value: item.dateField4_Value, dateField5_Value: item.dateField5_Value, totalStock: item.totalStock, totalStockReserved: item.totalStockReserved, totalStockOrdered: item.totalStockOrdered, listItemBarcodes: item.listSyncItemBarcodes)
//    }
	func generateStock(stock withStock: Int? = nil)->PSListStockStoresItem{
		var g: RandomNumberGenerator = SystemRandomNumberGenerator()
		return generateStock(stock: withStock, usingPRNG: &g)
	}
	func generateStock(stock withStock: Int? = nil, usingPRNG prng: inout RandomNumberGenerator)->PSListStockStoresItem{
        let stock = withStock ?? Int.random(in: 0...99999, using: &prng)
        return .init(storeCode365: "X", storeName: "X", storeActive: true, itemCode365: itemCode365, modelCode365: modelCode365, itemName: itemName, stock: stock, stockOnTransfer: 0, stockReserved: 0, stockOrdered: 0, mininumStock: 0, requiredStock: 0)
    }
	func generateModelMetadata()->PSListModel{
		.init(modelCode365: modelCode365, modelName: modelName, modelName2: modelName+"2", active: active, vatCode365: vatCode365, vatPercent: vatPercent, priceExcl: priceExcl1, priceIncl: priceIncl1, specifications: specifications, notes: notes, categoryCode365: categoryCode365, categoryName: categoryName, deptCode365: deptCode365, deptName: deptName, brandCode365: brandCode365, brandName: brandName, seasonCode365: seasonCode365, seasonName: seasonName, fabricCode365: "", fabricName: "", sizeGroupCode365: "", sizeGroupName: "", attribute1_Code365: attribute1_Code365, attribute1_Name: attribute1_Name, attribute2_Code365: attribute2_Code365, attribute2_Name: attribute2_Name, attribute3_Code365: attribute3_Code365, attribute3_Name: attribute3_Name, attribute4_Code365: attribute4_Code365, attribute4_Name: attribute4_Name, attribute5_Code365: attribute5_Code365, attribute5_Name: attribute5_Name, attribute6_Code365: attribute6_Code365, attribute6_Name: attribute6_Name, umCode365: umCode365, umName: umName, modelLength: itemLength, modelWidth: itemWidth, modelHeight: itemHeight, modelVolume: itemVolume, modelWeight: itemWeight, booleanField1_Value: booleanField1_Value, booleanField2_Value: booleanField2_Value, booleanField3_Value: booleanField3_Value, booleanField4_Value: booleanField4_Value, booleanField5_Value: booleanField5_Value, textField1_Value: textField1_Value, textField2_Value: textField2_Value, textField3_Value: textField3_Value, textField4_Value: textField4_Value, textField5_Value: textField5_Value, numberField1_Value: Double(numberField1_Value), numberField2_Value: Double(numberField2_Value), numberField3_Value: Double(numberField3_Value), numberField4_Value: Double(numberField4_Value), numberField5_Value: Double(numberField5_Value), dateField1_Value: dateField1_Value, dateField2_Value: dateField2_Value, dateField3_Value: dateField3_Value, dateField4_Value: dateField4_Value, dateField5_Value: dateField5_Value)
	}
	static func generateModel(modelCode: String, itemsCount: Int)->[PSItem]{
		var prng: RandomNumberGenerator = SystemRandomNumberGenerator()
		return generateModel(modelCode: modelCode, itemsCount: itemsCount, usingPRNG: &prng)
	}
	static func generateModel(modelCode: String, itemsCount: Int, usingPRNG prng: inout RandomNumberGenerator)->[PSItem]{
		let modelName = modelCode.capitalized
		let hasColor = Bool.random(using: &prng)
		let hasSize = Bool.random(using: &prng)
		//to have a third option, it must have a color option (since the value of third option is contained in the color value)
		let thirdOptions = hasColor ? [["Right", "Left"],["Men","Women", "Unisex"], nil].randomElement(using: &prng)! : nil
		let items = Array(0..<itemsCount).map{i in
			let price = Double.random(in: 1.99...2019.99, using: &prng)
			let discount = Double.random(in: 0...0.2, using: &prng)
			let discountedPrice = discount>0 ? discount*price : nil



			let barcode = Int.random(in: 1111111...9999999, using: &prng)
			let category = ["Shoes", "Neck","Waist", "Leg", "Hand", "Torso"].randomElement(using: &prng)!
			let colorOpt = hasColor ? ["Red", "Black", "Blue", "Green", "Yellow", "Purple", "Gray", "Orange", "Cyan", "Beige", "Pink"].randomElement(using: &prng)! : nil
			let size = hasSize ? ["Small", "Medium", "Large", "XLarge", "XXLarge"].randomElement(using: &prng)! : nil
			let thirdOption = thirdOptions?.randomElement(using: &prng)!
			let color = thirdOption == nil ? colorOpt : colorOpt?.appending(thirdOption!)
            return PSItem(itemCode365: modelName+"_\(i)", itemName: itemsCount>1 ? "" : "item \(i)", itemName2: "", active: true, ecommerce: true, vatCode365: "", vatPercent: 0, priceExcl1: 0, priceIncl1: price, priceExcl2: 0, priceIncl2: 0, priceExcl3: 0, priceIncl3: discountedPrice ?? price, priceExcl4: 0, priceIncl4: 0, priceExcl5: 0, priceIncl5: 0, priceExcl6: 0, priceIncl6: 0, priceExcl7: 0, priceIncl7: 0, priceExcl8: 0, priceIncl8: 0, priceExcl9: 0, priceIncl9: 0, priceExcl10: 0, priceIncl10: 0, specifications: "", notes: "", categoryCode365: category.lowercased(), categoryName: category, deptCode365: "", deptName: "", brandCode365: "", brandName: "", seasonCode365: "", seasonName: "", colorCode365: color?.lowercased() ?? "", colorName: color ?? "", colorHTML: "", sizeCode365: size?.lowercased() ?? "", sizeName: size ?? "", sizeNameInvoice: size ?? "", modelCode365: modelCode, modelName: modelName, attribute1_Code365: "", attribute1_Name: "", attribute2_Code365: "", attribute2_Name: "", attribute3_Code365: "", attribute3_Name: "", attribute4_Code365: "", attribute4_Name: "", attribute5_Code365: "", attribute5_Name: "", attribute6_Code365: "", attribute6_Name: "", umCode365: "", umName: "", itemLength: 0, itemWidth: 0, itemHeight: 0, itemVolume: 0, itemWeight: 0, numberOfPieces: 1, booleanField1_Value: false, booleanField2_Value: false, booleanField3_Value: false, booleanField4_Value: false, booleanField5_Value: false, textField1_Value: "", textField2_Value: "", textField3_Value: "", textField4_Value: "", textField5_Value: "", numberField1_Value: 0, numberField2_Value: 0, numberField3_Value: 0, numberField4_Value: 0, numberField5_Value: 0, dateField1_Value: "", dateField2_Value: "", dateField3_Value: "", dateField4_Value: "", dateField5_Value: "", totalStock: nil, totalStockReserved: nil, totalStockOrdered: nil, listItemBarcodes: [.init(barcode: "\(barcode)", isLabelBarcode: false, isEan13: true)])
		}
		return items
	}
	static func generateModel(minLengthOfModelName: Int, itemsCount: Int)->(String,[PSItem]){
		var g: RandomNumberGenerator = SystemRandomNumberGenerator()
		return generateModel(minLengthOfModelName: minLengthOfModelName, itemsCount: itemsCount, usingPRNG: &g)
	}
	static func generateModel(minLengthOfModelName: Int, itemsCount: Int, usingPRNG prng: inout RandomNumberGenerator)->(String,[PSItem]){
		let modelCode = modelNameGenerator(minLengthOfModelName)
        let model = generateModel(modelCode: modelCode, itemsCount: itemsCount, usingPRNG: &prng)
		return (modelCode,model)
    }

}
