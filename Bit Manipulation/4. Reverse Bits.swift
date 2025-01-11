//
//  4. Reverse Bits.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation

func reverseBits(_ n: Int) -> Int {
    var result = 0, num = n
    
    for _ in 0..<32 {
        result <<= 1
        result |= (num & 1)
        num >>= 1
    }
    return result
    
}
