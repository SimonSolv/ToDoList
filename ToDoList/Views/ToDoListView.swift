//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Simon Pegg on 26.05.2023.
//
import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemsView(item: item)
                        .swipeActions {
                            Button {
                                viewModel.delete(id: item.id)
                            } label: {
                                Text("Delete")
                                    .background(Color.red)
                            }
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To do list")
            .toolbar {
                Button(action: {
                    //Action
                    viewModel.showingNewItemView = true
                }, label: {
                    Image(systemName: "plus")
                })
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresenting: $viewModel.showingNewItemView)
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "nHCKjUhV4PP0foLszqbhRBttptB3")
    }
}
