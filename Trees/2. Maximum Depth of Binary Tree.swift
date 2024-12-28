//
//  2. Maximum Depth of Binary Tree.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 27/12/24.
//

import Foundation


func maxDepth(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }
    return max(maxDepth(root.left), maxDepth(root.right)) + 1
}
