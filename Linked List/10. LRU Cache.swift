//
//  10. LRU Cache.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 26/12/24.
//

import Foundation

class LRUCache {
    private class Node {
        let key: Int
        var value: Int
        var prev: Node?
        var next: Node?
        
        init(_ key: Int, _ value: Int) {
            self.key = key
            self.value = value
        }
    }

    private var capacity: Int
    private var map: [Int: Node]
    private var head: Node
    private var tail: Node

    init(_ capacity: Int) {
        self.capacity = capacity
        self.map = [:]
        self.head = Node(0, 0) // Dummy head
        self.tail = Node(0, 0) // Dummy tail
        head.next = tail
        tail.prev = head
    }

    func get(_ key: Int) -> Int {
        guard let node = map[key] else { return -1 }
        moveToHead(node)
        return node.value
    }

    func put(_ key: Int, _ value: Int) {
        if let node = map[key] {
            node.value = value
            moveToHead(node)
        } else {
            let newNode = Node(key, value)
            map[key] = newNode
            addToHead(newNode)
            if map.count > capacity {
                let tailNode = removeTail()
                map.removeValue(forKey: tailNode.key)
            }
        }
    }

    private func addToHead(_ node: Node) {
        node.next = head.next
        node.prev = head
        head.next?.prev = node
        head.next = node
    }

    private func removeNode(_ node: Node) {
        node.prev?.next = node.next
        node.next?.prev = node.prev
    }

    private func moveToHead(_ node: Node) {
        removeNode(node)
        addToHead(node)
    }

    private func removeTail() -> Node {
        let tailNode = tail.prev!
        removeNode(tailNode)
        return tailNode
    }
}
