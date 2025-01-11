//
//  4. Gas Station.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation

func gasStation(_ gas: [Int], _ cost: [Int]) -> Int {
    guard !gas.isEmpty, gas.count == cost.count else { return -1 }
    let totalGas = gas.reduce(0, +)
    let totalCost = cost.reduce(0, +)
    guard totalGas >= totalCost else { return -1 }

    var currentGas = 0, startStation = 0
    
    for i in 0..<gas.count {
        currentGas += gas[i] - cost[i]
        if currentGas < 0 {
            startStation = i + 1
            currentGas = 0
        }
    }
    return startStation
}
