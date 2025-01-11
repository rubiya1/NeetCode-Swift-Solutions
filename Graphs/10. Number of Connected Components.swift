//
//  10. Number of Connected Components.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 31/12/24.
//

import Foundation


func countComponents(_ n: Int, _ edges: [[Int]]) -> Int {
    var graph: [Int: [Int]] = [:]
    for edge in edges {
        graph[edge[0], default: []].append(edge[1])
        graph[edge[1], default: []].append(edge[0])
    }
    var visited: Set<Int> = []
    var componentCount: Int = 0
    
    for node in 0..<n {
        if !visited.contains(node) {
            componentCount += 1
                var stack = [node]
            while !stack.isEmpty {
                let current = stack.removeLast()
                visited.insert(current)
                for neighbor in graph[current, default: []] where !visited.contains(neighbor) {
                    stack.append(neighbor)
                }
            }
        }
    }
    
    return componentCount
    
}
