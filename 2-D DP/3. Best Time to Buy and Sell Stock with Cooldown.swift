//
//  3. Best Time to Buy and Sell Stock with Cooldown.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 04/01/25.
//

import Foundation

func bestTimeToBuyAndSellStockWithCooldown(_ prices: [Int]) -> Int {
    guard prices.count > 1 else { return 0 }
    var free = 0
    var have = -prices[0]
    var cool = 0
    
    for price in prices[1...] {
        let oldFree = free
        let oldHave = have
        let oldCool = cool
        
        free = max(oldFree, oldCool)
        have = max(oldFree, oldFree - price)
        cool = oldHave + price
    }
    
    return max(cool, free)
}
