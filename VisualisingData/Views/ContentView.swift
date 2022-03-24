//
//  ContentView.swift
//  VisualisingData
//
//  Created by Begg, Alistair (AMM) on 03/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            StackView()
                .tabItem {
                    Image(systemName: "rectangle.stack")
                    Text("Stack")
                }
            QueueView()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Queue")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
