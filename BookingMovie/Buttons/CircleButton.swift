//
//  CircleButton.swift
//  BookingMovie
//
//  Created by macOS on 11/04/2024.
//

import SwiftUI



struct CircleButton: View {
    @State var action: () ->Void
    @State var image: String = "arrow.left"
    
    var gradient: [Color] = [Color("cyan"),Color("cyan").opacity(0.1), Color("cyan")]
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: image)
                .frame(width: 44, height: 44)
                .background(.ultraThinMaterial)
                .foregroundColor(.white)
                .cornerRadius(30)
                .overlay(
                    Circle()
                        .trim(from: 0, to: CGFloat(0.5))
                        .stroke(LinearGradient(colors: gradient, startPoint: .top, endPoint: .bottom), style: StrokeStyle(lineWidth: 2))
                        .rotationEffect(.degrees(135))
                        .frame(width: 42, height: 42)
                )
        }
    }
}


//struct CircleButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CircleButton()
//    }
//}
