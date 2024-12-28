//
//  13. Construct Binary Tree from Preorder and Inorder Traversal.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 28/12/24.
//

import Foundation


func constructBinaryTreeFromPreorderAndInorderTraversal(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    if preorder.isEmpty || inorder.isEmpty { return nil }
    
    let rootVal = preorder[0]
    let root = TreeNode(rootVal)
    if let rootIndex = inorder.firstIndex(of: rootVal) {
        let leftInorder = Array(inorder[..<rootIndex])
        let rightInorder = Array(inorder[(rootIndex+1)...])

        let leftPreorder = Array(preorder[1..<leftInorder.count+1])
        let rightPreorder = Array(preorder[(leftInorder.count+1)...])
        
        root.left = constructBinaryTreeFromPreorderAndInorderTraversal(leftPreorder, leftInorder)
        root.right = constructBinaryTreeFromPreorderAndInorderTraversal(rightPreorder, rightInorder)
    }
    return root

}
