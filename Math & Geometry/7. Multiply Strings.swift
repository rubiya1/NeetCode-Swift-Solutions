//
//  7. Multiply Strings.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 11/01/25.
//

import Foundation
func multiplyStrings(_ num1: String, _ num2: String) -> String {
    guard !num1.isEmpty else { return num2 }
    guard !num2.isEmpty else { return num1 }
    
    if num1 == "0" || num2 == "0" { return "0" }
    
    let n1 = Array(num1.reversed()).map { Int(String($0))!}
    let n2 = Array(num2.reversed()).map { Int(String($0))!}
    
    var result = Array(repeating: 0, count: n1.count + n2.count)
    
    
    for i in 0..<n1.count {
        for j in 0..<n2.count {
            let product = n1[i] * n2[j]  // Multiply digits
            let sum = result[i+j] + product
            result[i+j] = sum % 10
            result[i+j+1] += sum / 10
        }
    }
    
    while result.last! == 0 { result.removeLast() }
    
    return result.reversed().map { String($0)}.joined()
}
