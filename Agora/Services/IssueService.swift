//
//  IssueService.swift
//  Agora
//
//  Created by James Florence on 3/23/25.
//

import Foundation

struct IssueService {
    static func fetchIssues() async throws -> [Issue] {
        let urlString = "\(APIConstants.DEV_BASE_URL)/issues/"
        
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)

            if let httpResponse = response as? HTTPURLResponse {

                if httpResponse.statusCode != 200 {
                    let responseBody = String(data: data, encoding: .utf8) ?? "N/A"
                    throw URLError(.badServerResponse)
                }
            }

            let issues = try JSONDecoder().decode([Issue].self, from: data)
            return issues

        } catch {
            throw error
        }
    }
}
