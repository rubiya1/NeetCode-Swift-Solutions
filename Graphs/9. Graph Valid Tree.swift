//
//  9. Graph Valid Tree.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 31/12/24.
//

import Foundation

func validTree(_ n: Int, _ edges: [[Int]]) -> Bool {
    guard edges.count == n - 1 else { return false }
    
    var graph: [Int: [Int]] = [:]
    
    for edge in edges {
        let u = edge[0], v = edge[1]
        graph[u, default: []].append(v)
        graph[v, default: []].append(u)
    }
    
    var visited: Set<Int> = []
    
    func dfs(_ node: Int, _ parent: Int) -> Bool {
        if visited.contains(node) { return false }
        
        visited.insert(node)
        
        for neighbor in graph[node] ?? [] {
            if neighbor == parent { continue }
            if !dfs(neighbor, node) { return false }
        }
        
        return true
    }
    if !dfs(0, -1) { return false}
    return visited.count == n
}
