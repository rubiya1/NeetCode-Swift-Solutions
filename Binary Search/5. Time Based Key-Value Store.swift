//
//  5. Time Based Key-Value Store.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 23/12/24.
//

import Foundation

class TimeMap {
    private var store = [String: [(String, Int)]]()
    
    init() {
        store = [:]
    }
    
    func set(_ key: String, _ value: String, _ timestamp: Int) {
        store[key]?.append((value, timestamp))
    }
    
    func get(_ key: String, _ timestamp: Int) -> String {
        guard let value = store[key] else { return "" }
        var res = ""
        var left = 0, right = value.count - 1
        
        while left <= right {
            let mid = left + (right - left) / 2
            if value[mid].1 <= timestamp {
                res = value[mid].0
                left = mid + 1
            }else {
                right = mid - 1
            }
        }
       
        return res
    }
}
