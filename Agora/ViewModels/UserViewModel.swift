//
//  UserViewModel.swift
//  Agora
//
//  Created by James Florence on 2/4/25.
//

import Foundation

@MainActor
class UserViewModel: ObservableObject {
    @Published var users: [User] = [] // Holds the fetched users
    
    func loadUsers() async {
        do {
            let fetchedUsers = try await UserService.fetchUsers()
            users = fetchedUsers
        } catch {
            print("Failed to fetch users: \(error)")
        }
    }
}
