//
//  QueueView.swift
//  VisualisingData
//
//  Created by Begg, Alistair (AMM) on 24/03/2022.
//

import SwiftUI

struct QueueView: View {
    @StateObject var queue = Queue([0,4,2,6])
    
    var body: some View {
        VStack {
            List(queue.displayQueue()) {
                Text($0.self)
            }
            HStack {
                Button("Push") {
                    let pushValue = Int.random(in: 0..<100)
                    queue.push(pushValue)
                }.padding()
                Button("Pop") {
                    if queue.queue.count > 0 {
                        queue.pop()
                    }
                }.padding()
            }
        }
    }
}

struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView()
    }
}
