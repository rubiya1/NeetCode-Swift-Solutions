//
//  5. Cheapest Flights Within K Stops.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation

func findcheapestFlightsWithinKStops(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ k: Int) -> Int {
    var flightMap = [Int: [(to: Int, price: Int)]]()

    for flight in flights {
        let from = flight[0]
        let to = flight[1]
        let price = flight[2]
        flightMap[from, default: []].append((to, price))
    }
    
    var queue = [(Int, Int, Int)]()
    queue.append((src, 0, 0))
    
    var minCost = Array(repeating: Int.max, count: n)
    minCost[src] = 0
    
    while !queue.isEmpty {
        let (currentCity, cost, stops) = queue.removeFirst()
        if currentCity == dst { return cost }

        if stops > k { continue }
                
        for (nextCity, price) in flightMap[currentCity, default: []]  {
            let newCost = cost + price
            
            if newCost < minCost[nextCity] {
                minCost[nextCity] = newCost
                queue.append((nextCity, newCost, stops + 1))
                
            }
        }
    }
    return -1
    
}
