//
//  Stack.swift
//  VisualisingData
//
//  Created by Begg, Alistair (AMM) on 03/03/2022.
//

import Foundation

class Stack: ObservableObject {
    @Published var stack: [Int]
    
    init(_ stack: [Int]) {
        self.stack = stack
    }
    
    func push(_ item: Int) {
        stack.append(item)
    }
    
    func pop() -> Int? {
        return self.stack.popLast()
    }
    
    func peek() -> Int? {
        guard let topItem = stack.last else { return nil }
        return topItem
    }
    
    func displayStack() -> [String] {
        var stackStrings = [String]()
        for item in stack {
            stackStrings.append(String(item))
        }
        return stackStrings
    }
}
