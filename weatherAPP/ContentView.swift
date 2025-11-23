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
            
            BackgroundGradientView(topColor: .blue, bottomColor: Color("lightBlue"))
            
            //all elements are view in swift
            
            VStack {
                
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                //Spacer()//it fill the entire space(modifier)
                
                cityTextView(cityNAme: "Hannover,Deutschland")
                MainWeatherStatusView(imagename: "cloud.sun.fill", temperature: "2")

                HStack(spacing: 12){
                    
                    // time 1
                    WeatherDayView(
                        dayOfWeek: "Wed",
                        imageName: "cloud.sun.fill",
                        temperature: 4
                    )
                    
                    // time 2
                    WeatherDayView(
                        dayOfWeek: "Thur",
                        imageName: "sun.max.fill",
                        temperature: 2
                    )
                    
                    // time 3
                    WeatherDayView(
                        dayOfWeek: "Fri",
                        imageName: "wind.snow",
                        temperature: 7
                    )
                    
                    // time 3
                    WeatherDayView(
                        dayOfWeek: "Sat",
                        imageName: "cloud.sun.fill",
                        temperature: 7
                    )
                    
                    // time 4
                    WeatherDayView(
                        dayOfWeek: "Sun",
                        imageName: "snow",
                        temperature: -1
                    )


                }
                Spacer()
                
                Button{
                    print("tapped")// logic to happen after pressing button
                }label: {
                    //button
                    WeatherButton(title: "Change day time",textColor: Color("lightBlue"), backgroundColor: .white)
                }
                
                Spacer()
                //we have maximum of 10 view limit eg like spacer,hstack,v,button

            }
        }
    }
}

#Preview {
    ContentView()
}

// to resuse this in many times we make it extractsubview
struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text("\(dayOfWeek)")
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            
            Image(systemName: "\(imageName)") // we brought symbol from SF Symbols
                .renderingMode(.original)        // to bring multi color we use rendering
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 20)
            
            Text("\(temperature)°C")
                .font(.system(size: 15, weight: .medium))
                .foregroundColor(.white)
        }
    }
}


struct BackgroundGradientView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {

        LinearGradient(
            /*
            gradient: Gradient(colors: [ Color.red,
                                         Color.blue,
                                         //Color("lightBlue"), we can create custom color in asset and use it here
                                         Color.yellow,
                                         .white]),// to add colors
            
            */
            gradient: Gradient(colors: [topColor,bottomColor]),// to add colors
            startPoint: .leading,// start left
            endPoint: .trailing// to right
        )
        .edgesIgnoringSafeArea(.all)//Ignore the safe area and draw this view all the way to the very edges of the screen.
    }
}

struct cityTextView: View {
    var cityNAme: String
    
    var body: some View {
        
        Text(cityNAme)
            .font(.system( size: 18,weight: .medium,design: .default))//styling font
            .foregroundColor(.white)//text color
            .background(Color.clear)//background color
            //.frame(width: 60,height: 10)// frame for this text
            .padding()
        
    }
}

struct MainWeatherStatusView: View {
    
    
    
    var imagename: String
    var temperature: String
    //"
    var body: some View{
        //spacing is to crate space between each element inside the stack
        VStack(spacing: 10){
            Image(systemName: imagename )//we brought symbol from sfsymbol
                .renderingMode(.original)// to bring multi color we use redering
                .resizable()//to apply the size to fill full screen
                .aspectRatio(contentMode: .fit)
                .frame(width: 80,height: 80)
            
            Text("\(temperature)°C")
                .font(.system(size: 25,weight:.medium))
                .foregroundColor(.white)
        }
        Spacer()
    }
}



