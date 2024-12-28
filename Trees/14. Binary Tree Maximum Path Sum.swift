//
//  14. Binary Tree Maximum Path Sum.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 28/12/24.
//

import Foundation


func maxPathSum(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }
    var maxSum = 0
    
    func dfs(_ node: TreeNode?) ->Int  {
        guard let node = node else { return 0 }
        let leftMax = dfs(node.left)
        let rightMax = dfs(node.right)
        
        let currentMax = node.val + max(leftMax, rightMax)

        maxSum = max(currentMax, maxSum)
        return node.val + max(leftMax, rightMax)
    }
     let _ = dfs(root)
    return maxSum
}
