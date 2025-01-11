//
//  12. Word Ladder.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 31/12/24.
//

import Foundation

func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
    guard wordList.contains(endWord) else { return 0 }
    
    var wordSet: Set<String> = Set(wordList)
    var queue: [(String, Int)] = [(beginWord, 1)]
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    
    
    while !queue.isEmpty {
        let (currentWord, step) = queue.removeFirst()
        if currentWord == endWord { return step }
        
        var currentChar = Array(currentWord)
        
        for i in 0..<currentChar.count {
            let originalChar = currentChar[i]
            
            for letter in alphabet where letter != originalChar {
                currentChar[i] = letter
                let newWord = String(currentChar)
                if wordSet.contains(newWord) {
                    queue.append((newWord, step + 1))
                    wordSet.remove(newWord)
                }
            }
            currentChar[i] = originalChar
        }
        

    }
    return 0
}
