//
//  11. Validate Binary Search Tree.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 28/12/24.
//

import Foundation

func validateBinarySearchTree(_ root: TreeNode?) -> Bool {
    
    func validate(_ node: TreeNode?, _ min: Int?, _ max: Int?) -> Bool {
        guard let node = node else { return true }
        if let min = min, node.val <= min { return false }
        if let max = max, node.val >= max { return false }
        return validate(node.left, min, node.val) && validate(node.right, node.val, max)
    }
    return validate(root, nil, nil)
}
