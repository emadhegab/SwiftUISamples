//
//  ContentView.swift
//  Binding
//
//  Created by Mohamed Hegab on 22.12.20.
//

import SwiftUI

struct ContentView: View {
    let episode = Episode(name: "Macbook M1", track: "WWDC 2020")

    @State private var isPlaying = false
    var body: some View {
        VStack {
            Text(self.episode.name)
                .font(.title)
                .foregroundColor(self.isPlaying ? .green : .black)
                .padding()
            Text(self.episode.track)
                .foregroundColor(.secondary)

            PlayButton(isPlaying: $isPlaying)
        }
    }
}

struct PlayButton: View {
    @Binding var isPlaying: Bool

    var body: some View {
        Button(action: {
            isPlaying.toggle()
        }, label: {
            Text("Play")
        })
        .padding(12)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
