//
//  6. Encode and Decode Strings.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 12/12/24.
//

import Foundation

class Codec {
    func encode(_ strs: [String]) -> String {
        return strs.map { "\($0.count)#\($0)"}.joined()
    }
    
    func decode(_ s: String) -> [String] {
        var decodedStrings = [String]()
        var i = 0
        let chars = Array(s)
        
        while i < chars.count {
            var j = i

            while chars[j] != "#" {
                j += 1
            }
            let lengh = Int(String(chars[i..<j]))!
            let start = j + 1
            let str = String(chars[start..<start+lengh])
            decodedStrings.append(str)
              i = start + lengh
            
        }
        
        return decodedStrings
    }
}
