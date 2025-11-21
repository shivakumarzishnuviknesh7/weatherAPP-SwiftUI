//
//  WeatherButton.swift
//  weatherAPP
//
//  Created by Zishnu Viknesh on 21.11.25.
//

import SwiftUI


struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View{
        Text("\(title)")// name of button
            .frame(width: 200,height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20,weight: .bold,design: .default))
            .cornerRadius(10)// button corner
    }
}
