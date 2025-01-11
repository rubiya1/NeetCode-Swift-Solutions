//
//  12. Kth Smallest Element in a BST.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 28/12/24.
//

import Foundation


func kthSmallestElementInBST(_ root: TreeNode?, _ k: Int) -> Int {
    var stack: [TreeNode] = []
    var count: Int = 0
    var current = root
    
    while !stack.isEmpty || current != nil {
        while let node = current {
            stack.append(node)
            current = node.left
        }
        let node = stack.removeLast()
        count += 1
        
        if count == k { return node.val }
        
        current = node.right
    }
    return -1
}
