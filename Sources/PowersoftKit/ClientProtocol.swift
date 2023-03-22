//
//  File.swift
//  
//
//  Created by Andreas Loizides on 16/03/2023.
//

import Foundation
public protocol PowersoftClientProtocol{
	//MARK: Items
	func getItem(itemCode: String)async->PSItem?
	func getAllItemsCount(type: eCommerceType)async ->Int?
	func getItemsPage(page: Int, type: eCommerceType)async ->[PSItem]?
	func getAllItems(type: eCommerceType)async -> [PSItem]?
	
	//MARK: Models
	func getModel(modelCode: String)async->[PSItem]?
	func getModelMetadata(modelCode: String)async->PSListModel?
	func getAllModelsCount(type: eCommerceType)async ->Int?
	func getModelsPage(page: Int, type: eCommerceType)async ->[PSListModel]?
	func getAllModels(type: eCommerceType)async -> [PSListModel]?
	
	//MARK: Stocks
	func getStock(for itemCode: String)async->PSListStockStoresItem?
	func getAllStockCount(type: eCommerceType)async->Int?
	func getStocksPage(page: Int, type: eCommerceType)async -> [PSListStockStoresItem]?
	func getAllStocks(type: eCommerceType)async -> [PSListStockStoresItem]?
	
	func getAllPaginated<T>(resourceName: String, countGetter:()async->Int?, pageGetter: @escaping (Int)async->[T]?)async->[T]?
}
