//
//  UserService.swift
//  Agora
//
//  Created by James Florence on 2/4/25.
//
import Foundation

import Foundation

struct UserService {
    static func fetchUsers() async throws -> [User] {
        let urlString = "\(APIConstants.DEV_BASE_URL)/users/"
        
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }

        // Decode JSON into an array of User objects
        let users = try JSONDecoder().decode([User].self, from: data)

        return users
    }
}


