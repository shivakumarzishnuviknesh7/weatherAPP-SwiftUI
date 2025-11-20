//
//  ContentView.swift
//  weatherAPP
//
//  Created by Zishnu Viknesh on 20.11.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //Color(.blue).edgesIgnoringSafeArea(.all)
            
            LinearGradient(
                gradient: Gradient(colors: [ Color.red, Color.blue, Color.yellow,.white]),// to add colors
                startPoint: .leading,// start left
                endPoint: .trailing// to right
            )
            .edgesIgnoringSafeArea(.all)//Ignore the safe area and draw this view all the way to the very edges of the screen.
            //all elements are view in swift
            
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                Text("This is a weather app for your daily use ")
                    .font(.system( size: 18,weight: .medium,design: .default))//styling font
                    .foregroundColor(.white)//text color
                    .background(Color.clear)//background color
                    //.frame(width: 60,height: 10)// frame for this text
                    .padding()

            }
        }
    }
}

#Preview {
    ContentView()
}
