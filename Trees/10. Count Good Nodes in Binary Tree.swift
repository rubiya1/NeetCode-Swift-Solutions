//
//  10. Count Good Nodes in Binary Tree.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 28/12/24.
//

import Foundation

func countGoodNodes(_ root: TreeNode?) -> Int {
    func dfs(_ root: TreeNode?, _ maxSoFar: Int) -> Int {
        guard let root else { return 0 }
        
        let isGood = root.val > maxSoFar ? 1 : 0
        
        let newMax = max(maxSoFar, root.val)
        
        return isGood + dfs(root.left, newMax) + dfs(root.right, newMax)

    }
    return  dfs(root, Int.min)
}
