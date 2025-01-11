//
//  4. Happy Number.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 11/01/25.
//

import Foundation

func happyNumber(_ n: Int) -> Bool {
    var slow = n
    var fast = getNxeDigit(n)
    
    while slow != fast && fast != 1 {
        slow = getNxeDigit(slow)
        fast = getNxeDigit(getNxeDigit(fast))
    }
   
    return fast == 1
}

private func getNxeDigit(_ n: Int) -> Int {
    var num = n, sum = 0
    
    while num > 0 {
        let digit = num % 10
        sum += digit * digit
        num /= 10
    }
    
    return sum
}
