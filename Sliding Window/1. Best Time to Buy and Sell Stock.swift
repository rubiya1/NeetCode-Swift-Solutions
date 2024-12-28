//
//  1. Best Time to Buy and Sell Stock.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 24/12/24.
//

import Foundation


func maxProfit(_ prices: [Int]) -> Int {
    var minPrice = prices.first!, maxProfit = 0
    for price in prices[1...] {
        let profit = price - minPrice
        maxProfit = max(maxProfit, profit)
        minPrice = min(minPrice, price)
    }
    
    return maxProfit
}


//prices = [7,1,5,3,6,4]
