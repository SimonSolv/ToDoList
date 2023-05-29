//
//  HeaderView.swift
//  ToDoList
//
//  Created by Simon Pegg on 26.05.2023.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let rotationAngle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: rotationAngle))
                
                
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 100)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        .offset(y: -150)
    }
        
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "Subtitle", rotationAngle: 15, background: .blue)
    }
}
