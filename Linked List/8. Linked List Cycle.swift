//
//  8.  Linked List Cycle.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 26/12/24.
//

import Foundation

func linkedListCycle(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head
    
    while slow != nil && fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        
        if slow === fast {
            return true
        }
    }
    return false
}
