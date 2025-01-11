//
//  11.  Redundant Connection.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 31/12/24.
//

import Foundation

func findRedundantConnection(_ edges: [[Int]]) -> [Int] {
    
    var graph: [Int: [Int]] = [:]
    
    func dfs(_ node: Int, _ target: Int, _ visited: inout Set<Int>) -> Bool {
        if node == target { return true }
        
        visited.insert(node)
        for neighbor in graph[node, default: []] where !visited.contains(neighbor) {
            visited.insert(neighbor)
            if dfs(neighbor, target, &visited) { return true }
        }
        return false
    }
    
    for edge in edges {
        let u = edge[0], v = edge[1]
        var visited: Set<Int> = []
        
        if graph.keys.contains(u) && graph.keys.contains(v) && dfs(u, v, &visited) {
            return edge
        }
        graph[u, default: []].append(v)
        graph[v, default: []].append(u)
    }
    
    return []
}





