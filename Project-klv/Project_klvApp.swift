//
//  Project_klvApp.swift
//  Project-klv
//
//  Created by Arthur Silva on 07/02/22.
//

import SwiftUI

@main
struct Project_klvApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
