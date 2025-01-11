//
//  6. Sum of Two Integers.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation


func sumOfTwoIntegers(_ a: Int, _ b: Int) -> Int {
    var a = a, b = b
    
    while b != 0 {
        let carry = a & b
        a = a ^ b
        b = carry << 1
    }
    return a + b
}
