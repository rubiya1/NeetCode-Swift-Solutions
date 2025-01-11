//
//  3.  Diameter of Binary Tree.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 28/12/24.
//

import Foundation

func maxDiameter(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }
    var maxDepth = 0
    
    func depth(_ node: TreeNode?) -> Int {
        guard let node else { return 0 }
        maxDepth = max(maxDepth, depth(node.left) + depth(node.right) + 1)
        return max(depth(node.left), depth(node.right)) + 1
    }
    let _ = depth(root)

    return maxDepth
}
