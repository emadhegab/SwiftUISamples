//
//  ContentView.swift
//  WeatherApp
//
//  Created by Mohamed Hegab on 23.12.20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var weatherVM: WeatherViewModel

    init() {
        weatherVM = WeatherViewModel()
    }
    var body: some View {
        VStack(alignment: .center) {
            
            TextField("Enter City Name", text: self.$weatherVM.cityName, onCommit:  {
                weatherVM.search()
            }).font(.largeTitle)
            .padding()
            .fixedSize()

            Text(self.weatherVM.temp)
                .font(.custom("Arial", size: 100))
                .offset(y: 100)
                .foregroundColor(.white)
                .offset(y: 100)
                .padding()
        }
        .frame(minWidth: 0, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color(.green))
        .edgesIgnoringSafeArea(.all)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
