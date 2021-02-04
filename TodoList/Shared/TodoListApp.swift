//
//  TodoListApp.swift
//  Shared
//
//  Created by alex.zarr on 1/25/21.
//

import SwiftUI

@main
struct TodoListApp: App {
    @Environment(\.scenePhase) var scenePhase
    
    var coreDataHelper = CoreDataHelper.shared
    
    var body: some Scene {
        WindowGroup {
            TaskListView()
                .environment(\.managedObjectContext, coreDataHelper.persistentContainer.viewContext)
        }
    }
}
