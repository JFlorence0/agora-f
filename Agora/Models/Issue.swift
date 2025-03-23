//
//  Issue.swift
//  Agora
//
//  Created by James Florence on 3/23/25.
//

import Foundation

struct Issue: Codable, Identifiable {
    let id: Int
    let title: String
    let description: String?
    let issueType: String
    let status: String
    let region: String
    let referenceId: String?
    let sponsor: String?
    let tags: [Tag]?
    let votingStartsAt: String?
    let votingEndsAt: String?
    let createdBy: User?
    let createdAt: String
    
    // Computed property to get Date from createdAt string
    var createdAtDate: Date? {
        ISO8601DateFormatter().date(from: createdAt)
    }
}

struct Tag: Codable, Identifiable {
    let id: Int
    let name: String
}
