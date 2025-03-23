//
//  week1_workbookApp.swift
//  week1_workbook
//
//  Created by 김창우 on 3/16/25.
//

import SwiftUI
import SwiftData

@main
struct week1_workbookApp: App {
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
            TicketView()
        }
        .modelContainer(sharedModelContainer)
    }
}
