//
//  1. Invert Binary Tree.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 27/12/24.
//

import Foundation
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


func invertBinaryTree(_ root: TreeNode?) -> TreeNode? {
    guard let root else { return nil }
    
    let left = invertBinaryTree(root.left)
    let right = invertBinaryTree(root.right)
    
    root.left = right
    root.right = left
    
    return root
}
