//
//  StatusUI.swift
//  BookingMovie
//
//  Created by macOS on 11/04/2024.
//

import SwiftUI

struct StatusUI: View {
    @State var color: Color = Color(.white)
    @State var text: String = "Available"
    
    var body: some View {
        HStack(spacing: 10.0) {
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(color)
            
            Text(text)
                .font(.subheadline)
                .foregroundColor(.white)
        }
    }
}

struct StatusUI_Previews: PreviewProvider {
    static var previews: some View {
        StatusUI()
    }
}
