//
//  1. Network Delay Time.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 08/01/25.
//

import Foundation

func networkDelayTime(_ times: [[Int]], _ n: Int, _ k: Int) -> Int {
    var dist = Array(repeating: Int.max, count: n+1)
    dist[k] = 0
    
    for _ in 0..<n{
        for t in times{
            let u = t[0], v = t[1], w = t[2]
            if dist[u] != Int.max && dist[u] + w < dist[v] {
                dist[v] = dist[u] + w
            }
        }
    }
    let maxTime = dist[1...n].max()!
    return maxTime == Int.max ? -1 : maxTime
}
