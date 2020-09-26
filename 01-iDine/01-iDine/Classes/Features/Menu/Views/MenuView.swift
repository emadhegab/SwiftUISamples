//
//  MenuView.swift
//  01-iDine
//
//  Created by Mohamed Hegab on 26.09.20.
//

import SwiftUI

struct MenuView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            ItemRow(item: item)
                        }
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Menu")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            
            
    }
}
