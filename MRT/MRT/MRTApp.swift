//
//  MRTApp.swift
//  MRT
//
//  Created by Carl on 3/1/26.
//

import SwiftUI
import CoreData

@main
struct MRTApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
