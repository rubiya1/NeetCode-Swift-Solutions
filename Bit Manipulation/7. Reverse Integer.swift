//
//  7. Reverse Integer.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation


func reverseInteger(_ x: Int) -> Int {
    let isNegative = x < 0
    var num = abs(x)
    var result = 0
    
    while num > 0 {
        guard result <= Int32.max/10 else { return 0 }
        result = result * 10 + num % 10
        num /= 10
    }
    
    result = isNegative ? -result : result
    return result > Int32.max || result < Int32.min ? 0 : result
}
