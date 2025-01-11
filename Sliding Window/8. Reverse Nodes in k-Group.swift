//
//  8. Reverse Nodes in k-Group.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 11/01/25.
//

import Foundation
func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
    // Step 1: Check if we have k nodes ahead
    var count = 0
    var current = head
    
    // Count k nodes ahead
    while count < k && current != nil {
        current = current?.next
        count += 1
    }
    
    // If we don't have k nodes, return head as is
    if count < k {
        return head
    }
    
    // Step 2: Reverse k nodes
    current = head
    var prev: ListNode? = nil
    var next: ListNode? = nil
    count = 0
    
    // Reverse k nodes using the standard reverse linked list approach
    while count < k && current != nil {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
        count += 1
    }
    
    // Step 3: Recursively reverse next k groups
    // head is now the last node of the reversed group
    // next is the first node of the remaining list
    if next != nil {
        head?.next = reverseKGroup(next, k)
    }
    
    // prev is the first node of the reversed group
    return prev
}
