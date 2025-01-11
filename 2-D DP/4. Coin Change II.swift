//
//  4. Coin Change II.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 06/01/25.
//

import Foundation

func coinChangeII(_ coins: [Int], _ amount: Int) -> Int {
    if coins.isEmpty { return 0 }
    if amount < 0 { return 0 }
    
    // DP array where dp[i] represents the number of ways to make amount i
    var dp = Array(repeating: 0, count: amount + 1)
    dp[0] = 1 // Base case: 1 way to make amount 0
    
    // Iterate over each coin
    for coin in coins {
        if coin > amount { continue } // Skip coins larger than the amount
        for currentAmount in coin...amount {
            dp[currentAmount] += dp[currentAmount - coin] // Safe access ensured
        }
    }
    
    return dp[amount]
}
