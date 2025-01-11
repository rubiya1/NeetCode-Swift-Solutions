//
//  7. Course Schedule.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 30/12/24.
//

import Foundation


func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
    var preMap = [Int: [Int]]() // Adjacency list
        var visitedSet = [Int: Bool]() // Keeps track of visiting and fully processed nodes

        // Step 1: Build the adjacency list
        for preReq in prerequisites {
            preMap[preReq[0], default: []].append(preReq[1])
        }

        // Step 2: Define the DFS function
        func dfs(_ crs: Int) -> Bool {
            if let fullyVisited = visitedSet[crs] {
                return fullyVisited // Return cached result (true = no cycle, false = cycle)
            }

            if preMap[crs] == nil { return true } // No prerequisites for this course

            // Mark as visiting
            visitedSet[crs] = false

            // Check prerequisites
            for pre in preMap[crs] ?? [] {
                if !dfs(pre) { return false } // Cycle detected
            }

            // Mark as fully visited
            visitedSet[crs] = true
            preMap[crs] = [] // Clear prerequisites to mark as processed
            return true
        }

        // Step 3: Perform DFS for all courses
        for crs in 0..<numCourses {
            if !dfs(crs) { return false } // If any course detects a cycle, return false
        }

        return true // All courses can be completed
}
