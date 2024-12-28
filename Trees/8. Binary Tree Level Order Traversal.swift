//
//  8. Binary Tree Level Order Traversal.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 28/12/24.
//

import Foundation


func levelOrderTraversal(_ root: TreeNode?) -> [[Int]] {
    guard let root else { return [] }
    var queue: [TreeNode] = [root]
    var result: [[Int]] = []
    while !queue.isEmpty {
        let size = queue.count
        var level: [Int] = []
        for _ in 0..<size {
            let node = queue.removeFirst()
            level.append(node.val)
            if let left = node.left { queue.append(left) }
            if let right = node.right { queue.append(right) }
        }
        result.append(level)
    }
    
    return result
}
