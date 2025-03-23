//
//  IssueViewModel.swift
//  Agora
//
//  Created by James Florence on 3/23/25.
//

import Foundation

@MainActor
class IssueViewModel: ObservableObject {
    @Published var issues: [Issue] = []
    
    func loadIssues() async {
        do {
            let fetchedIssues = try await IssueService.fetchIssues()
            issues = fetchedIssues
        } catch {
            print("Failed to fetch Issues: \(error)")
        }
    }
}
