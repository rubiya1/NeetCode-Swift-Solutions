//
//  3. Clone Graph.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 30/12/24.
//

func cloneGraph(_ node: Node?) -> Node? {
    guard let node else { return nil }
    
    var visited: [Node: Node] = [:]
    
    func dfs(_ node: Node) -> Node {
        
        if let clonedNode = visited[node] {
            return clonedNode
        }
        
        let clone = Node(node.val)
        visited[node] = clone
        
        for neighbor in node.neighbors {
            clone.neighbors.append(dfs(neighbor!))
        }
        
        return clone
    }
    return dfs(node)
}
