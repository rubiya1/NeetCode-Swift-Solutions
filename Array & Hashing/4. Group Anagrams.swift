//
//  Group Anagrams.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 12/12/24.
//

import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var map: [String: [String]] = [:]
    
    for str in strs {
        let sorted = String(str.sorted())
        map[sorted, default: []].append(str)
    }
    return Array(map.values)
}
