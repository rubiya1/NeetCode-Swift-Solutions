//
//  6. Pow(x, n).swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 11/01/25.
//

import Foundation

func myPow(_ x: Double, _ n: Int) -> Double {
    if n == 0 { return 1 }         // x^0 = 1
    if n < 0 { return 1 / myPow(x, -n) } // Handle negative powers
    
    // Divide-and-Conquer
    let half = myPow(x, n / 2)
    if n % 2 == 0 {
        return half * half          // If n is even
    } else {
        return x * half * half      // If n is odd
    }
}
