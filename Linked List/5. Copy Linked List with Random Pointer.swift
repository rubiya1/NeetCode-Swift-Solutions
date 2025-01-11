//
//  5. Copy Linked List with Random Pointer.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 25/12/24.
//

import Foundation

public class Node: Hashable {
    public var val: Int
    public var next: Node?
    public var random: Node?
    public var neighbors: [Node?]

    public init(_ val: Int) {
        self.val = val
        self.next = nil
        self.random = nil
        self.neighbors = []

    }
    
    public func hash(into hasher: inout Hasher) {
           hasher.combine(ObjectIdentifier(self))
       }

       // Conform to `Equatable` for `Hashable`
    public static func == (lhs: Node, rhs: Node) -> Bool {
           return lhs === rhs // Compare object identity
       }
}
 
func copyLinkedListWithRandomPointer(_ head: Node?) -> Node? {
    var runner = head
    var memo = [Node?: Node]()
    while let node = runner {
        memo[runner] = Node(node.val)
        runner = node.next
    }
    runner = head
    while let node = runner {
        memo[node]!.random = memo[node.random]
        memo[node]!.next = memo[node.next]
        runner = node.next
    }
    
    return memo[head]
}
