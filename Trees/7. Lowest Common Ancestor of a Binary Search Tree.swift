//
//  7.  Lowest Common Ancestor of a Binary Search Tree.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 28/12/24.
//

import Foundation


func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode?  {
    guard let root else { return nil }
    
    if root.val == p?.val || root.val == q?.val {
        return root
    }
    
    if p!.val < root.val && q!.val < root.val {
        return lowestCommonAncestor(root.left, p, q)
    }
    if p!.val > root.val && q!.val > root.val {
        return lowestCommonAncestor(root.right, p, q)
    }
    
    return root
}
