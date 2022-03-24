//
//  Queue.swift
//  VisualisingData
//
//  Created by Begg, Alistair (AMM) on 24/03/2022.
//

import Foundation

class Queue: ObservableObject {
    @Published var queue: [Int]
    
    init(_ queue: [Int]) {
        self.queue = queue
    }
    
    func push(_ item: Int) {
        queue.append(item)
    }
    
    func pop() {
        self.queue.remove(at: 0)
    }
    
    func displayQueue() -> [String] {
        var queueStrings = [String]()
        for item in queue {
            queueStrings.append(String(item))
        }
        return queueStrings
    }
}
