//
//  Split_FreeApp.swift
//  SplitFree
//
//  Created by Henrique César Gouveia on 30/11/23.
//

import SwiftUI
import SwiftData

@main
struct Split_FreeApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Group.self,
            Person.self,
            Bill.self,
            SplitedBill.self
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
            LoginView()
        }
        .modelContainer(sharedModelContainer)
    }
}
