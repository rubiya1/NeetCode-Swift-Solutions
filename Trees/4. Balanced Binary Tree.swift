//
//  4. Balanced Binary Tree.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 28/12/24.
//

import Foundation


func isBalanced(_ root: TreeNode?) -> Bool {
    guard let root else { return true }
    
    func height(_ node: TreeNode?) -> Int {
        guard let node else { return 0 }
        
        let leftHeight = height(root.left)
        let rightHeight = height(root.right)
        
        if abs(leftHeight - rightHeight) > 1 || leftHeight == -1 || rightHeight == -1 {
            return -1
        }
        return max(leftHeight, rightHeight) + 1
    
    }
    
    return height(root) != -1
}
