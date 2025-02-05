//
//  User.swift
//  Agora
//
//  Created by James Florence on 2/4/25.
//
import Foundation

struct User: Codable, Identifiable {
    let id: Int
    let email: String
    let username: String
    let createdAt: String
    let updatedAt: String
}
