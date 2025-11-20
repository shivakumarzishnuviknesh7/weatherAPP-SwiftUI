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
                //Spacer()//it fill the entire space(modifier)
                
                Text("This is a weather app for your daily use ")
                    .font(.system( size: 18,weight: .medium,design: .default))//styling font
                    .foregroundColor(.white)//text color
                    .background(Color.clear)//background color
                    //.frame(width: 60,height: 10)// frame for this text
                    .padding()
                
                
                //spacing is to crate space between each element inside the stack
                VStack(spacing: 10){
                    Image(systemName: "cloud.sun.fill")//we brought symbol from sfsymbol
                        .renderingMode(.original)// to bring multi color we use redering
                        .resizable()//to apply the size to fill full screen
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80,height: 80)
                    
                    Text("2 deg")
                        .font(.system(size: 25,weight:.medium))
                        .foregroundColor(.white)
                }
                Spacer()
                    

            }
        }
    }
}

#Preview {
    ContentView()
}
