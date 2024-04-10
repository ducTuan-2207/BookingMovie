//
//  HomeView.swift
//  BookingMovie
//
//  Created by macOS on 09/04/2024.
//

import SwiftUI

struct HomeView: View {
    @State var animate = false
    
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
           
            VStack(spacing: 0.0){
                Text("Choose Movie")
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundColor(.white)
                
                CustomSearchBar()
                    .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 20) {
                        ScrollSection(title: "Now playing", poster: posters1)
                        ScrollSection(title: "Coming soon", poster: posters2)
                        ScrollSection(title: "Top movies", poster: posters3)
                        ScrollSection(title: "Favorite", poster: posters1)
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .background(
            LinearGradient(colors: [Color("backgroundColor"),Color("backgroundColor2")], startPoint: .top, endPoint: .bottom)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
