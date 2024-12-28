//
//  6. Subtree of Another Tree.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 28/12/24.
//

import Foundation


func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
    guard let root else { return false }
    guard let subRoot else { return true }

    func isSameTree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard let root else { return subRoot == nil }
        guard let subRoot else { return false }
        
        if root.val != subRoot.val { return false }
        return isSameTree(root.left, subRoot.left) && isSameTree(root.right, subRoot.right)
    }
    return isSameTree(root, subRoot) ||  isSubtree(root.left, subRoot) || isSubtree(root.right, subRoot)
}

