//
//  ContentView.swift
//  Graphics
//
//  Created by Mohamed Hegab on 23.12.20.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        BarGraph(reports: Report.all())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
