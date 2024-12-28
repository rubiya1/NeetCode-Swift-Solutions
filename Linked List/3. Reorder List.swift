//
//  3. Reorder List.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 25/12/24.
//

import Foundation


func reorderListWithArray( input: inout [Int]) {
    var left = 0, right = input.count - 1
    while left < right {
        input.insert(input[right], at: left + 1)
        input.remove(at: right + 1)
        left += 2
        right -= 1
    }
}

func reorderList(_ head: ListNode?) {
    var slow = head, fast = head
    
    // Find middle node
    while fast?.next != nil && fast?.next?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
    }
    
    // reverse second half
    var prev: ListNode?
    var current = slow?.next
    slow?.next = nil
    
    while current != nil {
        let next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    // merge the nodes
    
    var first = head
    var second = prev
    
    while second != nil {
        let temp1  = first?.next
        let temp2  = second?.next
        
        first?.next = second
        second?.next = temp1
        first = temp1
        second = temp2
    }
}
