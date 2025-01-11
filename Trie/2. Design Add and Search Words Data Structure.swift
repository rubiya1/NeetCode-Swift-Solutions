//
//  2. Design Add and Search Words Data Structure.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation
class WordDictionary {
    var storage = [Int: Set<String>]()

    init() {}
    
    func addWord(_ word: String) {
        if storage[word.count] == nil {
            storage[word.count] = []
        }
        storage[word.count]!.insert(word)

    }
    
    func search(_ word: String) -> Bool {
        guard let  words = storage[word.count] else { return false }
        
        for w  in words {
            var i = w.startIndex
            var j = word.startIndex
            
            var found = true
            while i < w.endIndex {
                if word[j] != "." && word[j] != w[i] {
                    found = false;
                    break;
                }
                
                i = w.index(after: i)
                j = word.index(after: j)
            }
            if found {
                return true
            }
        }
        
        return false
    }
}
