//
//  7. Coin Change.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 01/01/25.
//

import Foundation

func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    guard !coins.isEmpty else { return amount == 0 ? 1 : 0 }
    var dp = Array(repeating: amount + 1, count: amount + 1)
    dp[0] = 0
    
    for i in 1...amount {
       for coin in coins {
            if i >= coin {
                dp[i] = min(dp[i], dp[i - coin] + 1)
            }
        }
    }
    
    return dp[amount] > amount ? -1 : dp[amount]
}
