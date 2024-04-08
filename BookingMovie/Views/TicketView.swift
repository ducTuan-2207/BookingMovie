//
//  TicketView.swift
//  BookingMovie
//
//  Created by macOS on 07/04/2024.
//

import SwiftUI

struct TicketView: View {
    @State private var animate = false
    var body: some View {
        ZStack {
            CircleBackground(color: Color("greenCircle"))
                .blur(radius:animate ? 30 : 100)
                .offset(x:animate ? -50 : -130,y :animate ? -30 : -100 )
                .task {
                    withAnimation(.easeInOut(duration: 2).repeatForever()) {
                        animate.toggle()
                    }
                }
            
            CircleBackground(color: Color("pinkCircle"))
                .blur(radius:animate ? 30 : 100)
                .offset(x:animate ? 50 : 130,y :animate ? 30 : 100 )
            VStack(spacing: 30){
                Text("Movie Ticket")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Text("Once you buy a movie ticket simply scan the barcode to acces to your movie.")
                    .frame(maxWidth: 250)
                    .font(.body)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
            
            Tickets()
                .padding(.top,30)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
        )

    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
