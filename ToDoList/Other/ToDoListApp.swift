//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Simon Pegg on 26.05.2023.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
