//
//  TodoListApp.swift
//  TodoList
//
//  Created by Admin on 3/31/21.
//

import SwiftUI

@main
struct TodoListApp: App {
    @StateObject var todoManager = TodoListManager()
    var body: some Scene {
        WindowGroup {
            TodoListView(todo: todoManager)
        }
    }
}
