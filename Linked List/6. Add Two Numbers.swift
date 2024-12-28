//
//  6. Add Two Numbers.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 25/12/24.
//

import Foundation

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let dummy = ListNode(0) // Dummy node to simplify result list creation
    var l1 = l1
    var l2 = l2
    var result = dummy
    var carry: Int = 0
    
    while l1 != nil || l2 != nil {
        let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
        carry = sum / 10
        let node = ListNode(sum % 10)
        result.next = node
        result = result.next!
        
        l1 = l1?.next
        l2 = l2?.next
    }
    if carry > 0 {
        result.next = ListNode(carry)
    }
    return dummy.next
}
