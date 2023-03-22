//
//  File.swift
//  
//
//  Created by Andreas Loizides on 20/04/2020.
//

import Foundation
// MARK: - PSChangesApplied
public struct PSChangesApplied: Codable {
	public let apiCredentials: PSAPICredentials
	public let listSyncChangesApplied: [PSListSyncChangesApplied]

	public enum CodingKeys: String, CodingKey {
        case apiCredentials = "api_credentials"
        case listSyncChangesApplied = "list_sync_changes_applied"
    }
}
// MARK: - PSAPICredentials
public struct PSAPICredentials: Codable {
	public init(token: String) {
		self.token = token
	}
	
	public let token: String
}
// MARK: - PSListSyncChangesApplied
public struct PSListSyncChangesApplied: Codable {
	public let changeID365: Int

	public enum CodingKeys: String, CodingKey {
        case changeID365 = "change_id_365"
    }
}
