//
//   1. Implement Trie (Prefix Tree).swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation

class Trie {
    var nodes: [Character: Trie]
    
    init() {
        self.nodes = [:]
    }
    
    func insert(_ word: String) {
        var trie = self
        for ch in word {
            if let subTree = trie.nodes[ch] {
                trie = subTree
            }else {
                let subTree = Trie()
                trie.nodes[ch] = subTree
                trie = subTree
            }
        }
        trie.nodes["#"] = Trie()
    }
    
    func search(_ word: String) -> Bool {
        var trie = self
        for ch in word {
            if let subTree = trie.nodes[ch] {
                trie = subTree
            }else {
                return false
            }
        }
        return  trie.nodes["#"]  != nil
    }
    
    func startsWith(_ prefix: String) -> Bool {
        var trie = self
        for ch in prefix {
            if let subTree = trie.nodes[ch] {
                trie = subTree
            }else {
                return false
            }
        }
        return true
    }
}
