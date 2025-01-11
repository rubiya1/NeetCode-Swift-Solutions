//
//  Course Schedule II.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 30/12/24.
//

import Foundation


func courseScheduleII(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
    var graph = [[Int]](repeating: [], count: numCourses)
    var inDegree = [Int](repeating: 0, count: numCourses)
    
    for pair in prerequisites {
        graph[pair[1]].append(pair[0])
        inDegree[pair[0]] += 1
    }
    
    var queue = (0..<numCourses).filter { inDegree[$0] == 0 }
        var result = [Int]()
        
        // Process the courses
        while let course = queue.first {
            queue.removeFirst()
            result.append(course)
            
            for next in graph[course] {
                inDegree[next] -= 1
                if inDegree[next] == 0 {
                    queue.append(next)
                }
            }
        }
        
        // Return the result if all courses can be taken
        return result.count == numCourses ? result : []
}

