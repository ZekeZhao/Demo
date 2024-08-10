//
//  ContentView.swift
//  Demo
//
//  Created by Zeke 🕶️ on 2024/8/9.
//

import SwiftUI

struct ContentView: View {
    @State var isWatered = false
    var body: some View {
        VStack{
            
            Image(systemName: isWatered ? "crown.fill":"eyes")
                .foregroundColor(.blue)
                .font(.system(size: 150))
                .shadow(radius: 4)

            ZStack{
                Image("cat")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)

            }
            .frame(minHeight: 400)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Divider()
            Toggle(isOn: $isWatered) {
                Label("今天你喝水了吗", systemImage: "drop.fill")
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}










#Preview {
    ContentView()
}



