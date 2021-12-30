//
//  BulletLikeApp.swift
//  Shared
//
//  Created by Kevin ABRIOUX on 28/12/2021.
//

import SwiftUI
import FirebaseCore

@main
struct BulletLikeApp: App {
    var body: some Scene {
        FirebaseApp.configure()
        return WindowGroup {
            TaskListView(viewModel: TaskListViewModel())
        }
    }
}
