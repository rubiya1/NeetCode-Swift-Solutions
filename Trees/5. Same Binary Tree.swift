//
//  5. Same Binary Tree.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 28/12/24.
//

import Foundation

func isSameBinaryTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    guard let p, let q else { return p?.val == q?.val }
    
    if p.val != q.val { return false }
    
    return isSameBinaryTree(p.left, q.left) && isSameBinaryTree(p.right, q.right)
}
