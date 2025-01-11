//
//  2. Reconstruct Itinerary.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 08/01/25.
//

import Foundation

func findItinerary(_ tickets: [[String]]) -> [String] {
    var graph = Dictionary(grouping: tickets) {$0[0]}
        .mapValues {$0.map {$0[1]}.sorted() }
    var route = [String]()
    func visit(_ airport: String) {
        while let next = graph[airport]?.first {
            graph[airport]?.removeFirst()
            visit(next)
        }
        route.insert(airport, at: 0)
    }
    visit("JFK")
    return route
}
