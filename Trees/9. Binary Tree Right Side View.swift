//
//  9. Binary Tree Right Side View.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 28/12/24.
//

import Foundation

func rightSideView(_ root: TreeNode?) -> [Int] {
    var result: [Int] = []
    guard let root else { return result }
    var queue: [TreeNode] = [root]

    while !queue.isEmpty {
        result.append(queue.last!.val) // Add the rightmost node of the current level
        let size = queue.count
        for _ in 0..<size {
            let node = queue.removeFirst()
            if let left = node.right { queue.append(left) }
            if let right = node.left { queue.append(right) }
        }
    }
    return result
}
