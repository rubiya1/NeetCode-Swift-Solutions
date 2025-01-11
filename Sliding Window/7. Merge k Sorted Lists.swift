//
//  7. Merge k Sorted Lists.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 11/01/25.
//

import Foundation

func mergeKSortedLists(_ lists: [ListNode?]) -> ListNode? {
    var nodeArray = [(Int, ListNode)]()
    
    for list in lists where list != nil {
        nodeArray.append((list!.val, list!))
    }
    nodeArray.sort { $0.0 < $1.0 }
    let dummy = ListNode(0)
    var curr = dummy
    
    while nodeArray.count > 0 {
        let (_, smalletNode) = nodeArray.removeFirst()
        curr.next = smalletNode
        curr = curr.next!
        
        if let nextNode = smalletNode.next {
            nodeArray.append((nextNode.val, nextNode))
            nodeArray.sort { $0.0 < $1.0 }
        }
    }
    
    
    return dummy.next
}
