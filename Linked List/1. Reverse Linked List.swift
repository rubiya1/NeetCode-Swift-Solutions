//
//  1. Reverse Linked List.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 25/12/24.
//

import Foundation
/*Key Points for Reversing a Linked List:
 1. Nodes in a Linked List:
     * Each node holds a val (value) and a next pointer to the next node.
 2. Pointers Used:
     * prev: Tracks the reversed portion of the list (starts as nil).
     * current: Tracks the node currently being processed (starts as the head).
     * next: Temporarily saves current.next to preserve the rest of the list.
 3. Reversal Process:
     * Save the next node:swift let next = current.next 
     * Reverse the link of the current node:swift current.next = prev  
     * Move prev to current:swift prev = current 
     * Move current to next:swift current = next 
 4. Loop Until current == nil:
     * Continue processing nodes until you’ve traversed the entire list.
 5. Final Result:
     * When current becomes nil, prev points to the new head of the reversed list.*/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    var prev: ListNode? = nil
    var current = head
    while current != nil {
        let next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    
    return prev
}
