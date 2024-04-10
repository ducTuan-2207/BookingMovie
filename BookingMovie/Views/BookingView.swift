//
//  BookingView.swift
//  BookingMovie
//
//  Created by macOS on 11/04/2024.
//

import SwiftUI

struct BookingView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State var gradient = [Color("backgroundColor2").opacity(0),Color("backgroundColor2"),Color("backgroundColor2").opacity(0)]
    
    @State var selectDate = false
    @State var selectHour = false
    @State var bindingSelection = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("booking")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxHeight: .infinity, alignment: .top)
                VStack {
                    LinearGradient(colors: gradient, startPoint: .top, endPoint: .bottom)
                        .frame(height: 600)
                }
                .frame(maxHeight: .infinity, alignment: .bottom)
                VStack(spacing: 0){
                    HStack {
                        CircleButton(action: {
                            dismiss()
                        }, image: "arrow.left")
                        Spacer()
                        CircleButton(action: {}, image: "ellipsis")
                    }
                    .padding(EdgeInsets(top: 46, leading: 20, bottom: 0, trailing: 20))
                    Text("Doctor Strange")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 200)
                    Text("in the Multiverse if Madness")
                        .font(.title3)
                        .foregroundColor(.white)
                    Text("Dr. Stephen casts a forbinden spell that opens the doorway ti the multiverse, including alternate version of...")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(30)
                    Text("Select date and time")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    HStack(alignment: .top, spacing: 20){
                        DateButton(weekDay: "Thu",numDay: "22", isSelected: $bindingSelection)
                            .padding(.top, 90)
                        DateButton(weekDay: "Fri",numDay: "23", isSelected: $bindingSelection)
                            .padding(.top, 70)
                        DateButton(weekDay: "Sat",numDay: "24",width: 70,height: 100 ,isSelected: $selectDate, action: {
                            withAnimation(.spring()){
                                selectDate.toggle()
                            }
                        })
                        DateButton(weekDay: "Sun",numDay: "25", isSelected: $bindingSelection)
                            .padding(.top, 70)
                        DateButton(weekDay: "Mon",numDay: "26", isSelected: $bindingSelection)
                            .padding(.top, 90)
                    }
                    HStack(alignment: .top, spacing: 20) {
                        TimeButton(hour: "2:11", isSelected:$bindingSelection )
                            .padding(.top, 20)
                        TimeButton(hour: "4:11", isSelected:$bindingSelection )
                        TimeButton(hour: "3:11",width: 70,height: 40 ,isSelected:$bindingSelection, action: {
                            withAnimation(.spring()){
                                selectHour.toggle()
                            }
                        })
                        .padding(.top, -20)
                        TimeButton(hour: "5:11", isSelected:$bindingSelection )
                        TimeButton(hour: "6:11", isSelected:$bindingSelection )
                            .padding(.top, 20)
                    }
                    NavigationLink {
                        SeatsView()
                    } label: {
                        LargeButton()
                            .padding(20)
                            .offset(y: selectDate && selectHour ? 0 : 200)
                    }
                    
                    
                }
                .frame(maxHeight: .infinity, alignment: .top
                )
            }
            .background(Color("backgroundColor2"))
        .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
