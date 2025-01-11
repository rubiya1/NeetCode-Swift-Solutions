//
//  7. Partition Labels .swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation

func partitionLabels(_ s: String) -> [Int] {
    let char = Array(s)
    var lastSeen = [Character: Int]()
    char.enumerated().forEach { lastSeen[$1] = $0 }
    
    var result = [Int](), start = 0, end = 0
    
    char.enumerated().forEach { index, char in
        end = max(end, lastSeen[char]!)
        
        if index == end {
            result.append(end - start + 1)
            start = end + 1
        }
    }
    return result
}
