//
//  AgoraApp.swift
//  Agora
//
//  Created by James Florence on 2/2/25.
//

import SwiftUI
import SwiftData

@main
struct AgoraApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            Home()
        }
        .modelContainer(sharedModelContainer)
    }
}
