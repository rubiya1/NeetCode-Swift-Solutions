//
//  7. Letter Combinations of a Phone Number.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 30/12/24.
//

import Foundation

func letterCombinations(_ digits: String) -> [String] {
    guard !digits.isEmpty else { return [] }
    
    let digitToChar: [Character: [String]] = [
        "2": ["a", "b", "c"],
        "3": ["d", "e", "f"],
        "4": ["g", "h", "i"],
        "5": ["j", "k", "l"],
        "6": ["m", "n", "o"],
        "7": ["p", "q", "r", "s"],
        "8": ["t", "u", "v"],
        "9": ["w", "x", "y", "z"]
    ]
    
    var result = [String]()
    var current = [Character]()

    func backTrack(_ index: Int) {
        if index == digits.count {
            result.append(String(current))
            return
        }
        guard let charArray = digitToChar[Array(digits)[index]] else { return }
        for char in charArray {
            current.append(Character(char))
            backTrack(index + 1)
            current.removeLast()
        }
    }
    backTrack(0)
    return result
    
}
