//
//  TodoListManager.swift
//  TodoList
//
//  Created by Admin on 4/1/21.
//

import Foundation

class TodoListManager:ObservableObject {
    @Published var items:[Todo] = []
    
    init(isForTest:Bool = false) {
        if isForTest {
            
        }
    }
    
    
    func move(indices:IndexSet,newOffset:Int)  {
        items.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addItem()  {
        items.append(Todo(id: UUID(), name: "new todo"))
    }
    
   static func emptyState() -> TodoListManager {
        let manager = TodoListManager(isForTest: true)
        manager.items = []
        return manager
    }
    static func fullState() -> TodoListManager{
        let manager = TodoListManager(isForTest: true)
        manager.items = [
            Todo(id: UUID(), name: "learning MVVM"),
            Todo(id: UUID(), name: "Make UI Swift"),
            Todo(id: UUID(), name: "Clean code"),
            Todo(id: UUID(), name: "Learn API")
        ]
        
        return manager
    }
    
}
