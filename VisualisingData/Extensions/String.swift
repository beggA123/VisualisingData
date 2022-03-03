//
//  String.swift
//  VisualisingData
//
//  Created by Begg, Alistair (AMM) on 03/03/2022.
//

import Foundation

extension String: Identifiable {
    public typealias ID = Int
    public var id: Int {
        return hash
    }
}
