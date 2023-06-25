//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Simon Pegg on 26.05.2023.
//

import Foundation

///ViewModel for list of items view
///Primary tab

class ToDoListViewViewModel: ObservableObject  {
    @Published var showingNewItemView = false
    
    init() {}
    
    func delete(id: String) {
        
    }
    
}
