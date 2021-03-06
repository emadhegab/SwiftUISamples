//
//  ItemRow.swift
//  01-iDine
//
//  Created by Mohamed Hegab on 26.09.20.
//

import SwiftUI

struct ItemRow: View {
    var item: MenuItem
    static let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.green, lineWidth: 2))
            VStack(alignment: .leading) {
                
                Text(item.name)
                    .font(.largeTitle)
                
                Text(String("$\(item.price)"))
                    .foregroundColor(.green)
                
            }
            .layoutPriority(1)
            Spacer()
            ForEach(item.restrictions, id: \.self) { restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(Self.colors[restriction, default: .black])
                    .clipShape(Circle())
                    .foregroundColor(.white)
            }
        }
   }
    
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        // this MuneItem.exmple is a static made just to pass to ItemRow.. cause other wise the preview won't work
        
        ItemRow(item: MenuItem.example)
    }
}
