//
//  6. Merge Triplets to Form Target Triplet.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation

func mergeTripletsToFormTargetTriplet(_ triplets: [[Int]], _ target: [Int]) -> Bool {
    guard !triplets.isEmpty,
          target.count == 3,
          triplets.allSatisfy({ $0.count == 3 }) else {
        return false
    }
    var maxValues = (x: 0, y: 0, z: 0)
    
    for triplet in triplets {
        let (x, y, z) = (triplet[0], triplet[1], triplet[2])

        guard x <= target[0] && y <= target[1] && z <= target[2] else {
            continue
        }
        maxValues = (
                   x: max(maxValues.x, x),
                   y: max(maxValues.y, y),
                   z: max(maxValues.z, z)
               )
    }
    return maxValues == (x: target[0], y: target[1], z: target[2])
}
