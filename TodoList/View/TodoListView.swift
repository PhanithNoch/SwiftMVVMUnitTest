//
//  ContentView.swift
//  TodoList
//
//  Created by Admin on 3/31/21.
//

import SwiftUI



struct TodoListView: View {
    @ObservedObject var todo:TodoListManager
    var body: some View {
        NavigationView{
            ZStack {
                List{
                    ForEach(todo.items) {
                        item in
                        NavigationLink(destination:Text(item.name)) {
                            Text(item.name)
                        }
                    }
                    .onDelete(perform: { indexSet in
                        for index in indexSet {
                            todo.items.remove(at: index)
                        }
                    })
                    .onMove(perform: { indices, newOffset in
                        todo.move(indices: indices,newOffset: newOffset)
                    })
                }.navigationBarTitle(Text("Todo"),displayMode: .large)
                .toolbar(content: {
                    ToolbarItemGroup(placement: .navigationBarTrailing){
                        EditButton()
                        Button(action: {
                        
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                        })
                    }
            })
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            TodoListView(todo: TodoListManager.emptyState()).previewDisplayName("empty state")
            TodoListView(todo: TodoListManager.fullState()).previewDisplayName("data exists")
        }
    }
}
