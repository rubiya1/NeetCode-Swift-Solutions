//
//  15. Serialize and Deserialize Binary Tree.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 28/12/24.
//

import Foundation


class CodeS {
    
    func serialize(_ root: TreeNode?) -> String {
        guard let root else { return "null" }
        return "\(root.val)," + "\(serialize(root.left))" + "," + "\(serialize(root.right))"
    }
    
    func deserialize(_ data: String) -> TreeNode? {
        var node = data.split(separator: ",").map { String($0)}
        return deserializeHelper(&node)
    }
    
    private func deserializeHelper(_ node: inout [String]) -> TreeNode? {
        guard !node.isEmpty else { return nil }
        let val = node.removeFirst()
        guard val != "null" else { return nil }
        
        let root = TreeNode(Int(val)!)
        root.left = deserializeHelper(&node)
        root.right = deserializeHelper(&node)
        return root
    }
}
