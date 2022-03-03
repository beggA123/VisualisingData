//
//  StackView.swift
//  VisualisingData
//
//  Created by Begg, Alistair (AMM) on 03/03/2022.
//

import SwiftUI

struct StackView: View {
    @StateObject var stack = Stack([0,3,5,1])
    @State var peekedValue = ""
    
    var body: some View {
        VStack {
            List(stack.displayStack()) {
                Text($0.self)
            }
            Text(peekedValue)
            HStack {
                Button("Push") {
                    let pushValue = Int.random(in: 0..<100)
                    stack.push(pushValue)
                }.padding()
                Button("Pop") {
                    let _ = stack.pop()
                }.padding()
                Button("Peek") {
                    peekedValue = String(stack.peek() ?? -1)
                    if peekedValue == "-1" {
                        peekedValue = "Invalid"
                    }
                }.padding()
            }
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
