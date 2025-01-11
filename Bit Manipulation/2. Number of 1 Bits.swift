//
//  2. Number of 1 Bits.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation

func numberOf1Bits(_ n: Int) -> Int {
    var count = 0
    let num = n
    while num != 0 {
        if num & 1 == 1 {
            count += 1
        }
    }
    return count
}
