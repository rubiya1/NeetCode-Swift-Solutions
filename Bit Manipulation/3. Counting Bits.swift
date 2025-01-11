//
//  3. Counting Bits.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation

func countingBits(_ n: Int) -> [Int] {
    var result = Array(repeating: 0, count: n + 1)
    
    for i in 0...n {
        var num = i
        while num != 0 {
            if num & 1 == 1 {
                result[i] += 1
            }
            num >>= 1  // Needed here because checking bit by bit
        }
    }
    return result
}
