//
//  ContentView.swift
//  about me app
//
//  Created by Scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var factsTitle = "More Facts about Me"
    
    var body: some View {
        
        ZStack {
                    Color(.systemPink)
                        .ignoresSafeArea()
            
            
            VStack {
                Spacer()
                    .frame(height: 10.0)
                    Text("Fun Fact about Katherine Sun")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    HStack {
                        Text("My Passion:")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        
                        Text("Hating Olives")
                        
                    }
                    
                    Image("olive")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    HStack{
                        Text(factsTitle)
                        Button("Learn more!") {
                            factsTitle = "I Love Tomatoes"
                        }
                        
                    }
                Spacer()
                    .frame(height: 10.0)
            }
                .background(Rectangle().foregroundColor(.white))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding()
                }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
