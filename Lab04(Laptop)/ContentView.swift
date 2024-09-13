//
//  ContentView.swift
//  Lab04(Laptop)
//
//  Created by Asher Antrim on 9/13/24.
//

import SwiftUI

struct ContentView: View {
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                CardView()
                CardView()
                CardView()
                CardView()
                CardView()
                CardView()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
