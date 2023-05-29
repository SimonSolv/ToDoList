//
//  TLButton.swift
//  ToDoList
//
//  Created by Simon Pegg on 28.05.2023.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                    .frame(height: 35)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Button", background: .blue, action: {
            //Action
        })
    }
}
