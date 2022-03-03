//
//  ContentView.swift
//  VisualisingData
//
//  Created by Begg, Alistair (AMM) on 03/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink("Stack", destination: StackView())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
