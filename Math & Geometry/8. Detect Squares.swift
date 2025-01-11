//
//  8. Detect Squares.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 11/01/25.
//

import Foundation


class DetectSquares {
    private var pointsCount = [Int: [Int: Int]]()
    
    init () {}
    func add(_ point:[Int]) {
        let x = point[0], y = point[1]
        if pointsCount[x] == nil {
            pointsCount[x] = [:]
        }
        pointsCount[x]![y, default: 0] += 1
    }
    
    func count(_ point: [Int]) -> Int {
        let x = point[0], y = point[1]
        guard let sameXPoints = pointsCount[x] else { return 0 }
        var result = 0
        
        for (y1, countY1) in sameXPoints {
            let d = abs(y - y1)
            if d == 0 { continue } // Skip if the point is the same
            let count1 = pointsCount[x + d]?[y1] ?? 0
            let count2 = pointsCount[x + d]?[y] ?? 0
            
            result += countY1 * count1 * count2
            let count3 = pointsCount[x - d]?[y1] ?? 0
            let count4 = pointsCount[x - d]?[y] ?? 0
            result += countY1 * count3 * count4
            
        }
        return result
    }
}
