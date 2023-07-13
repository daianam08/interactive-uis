//
//  ContentView.swift
//  interactive uis
//
//  Created by scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?!"
    var body: some View {
        VStack{
            Text(textTitle)
                .font(.title)
            
            TextField("Type name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title2)
                .border(Color.gray, width: 1)
            
            Button("Submit"){
                textTitle = "Welcome, \(name)!"
                
            }
        //button
            .font(.title3)
            .buttonStyle(.borderedProminent)
            .tint(.red)
        
        }//vstack
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
