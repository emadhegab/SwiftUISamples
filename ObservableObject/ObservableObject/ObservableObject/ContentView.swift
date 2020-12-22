//
//  ContentView.swift
//  ObservableObject
//
//  Created by Mohamed Hegab on 22.12.20.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var fancyTimer = FancyTimer()

    var body: some View {
        Text("\(fancyTimer.value)")
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
