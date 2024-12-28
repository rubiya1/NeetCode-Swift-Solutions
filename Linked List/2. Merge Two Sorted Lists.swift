//
//  2. Merge Two Sorted Lists.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 25/12/24.
//

import Foundation

func mergeTwoSortedLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let preHead = ListNode(0)
    var current: ListNode? = preHead
    var l1 = l1, l2 = l2
   
    while l1 != nil || l2 != nil {
        if l1!.val < l2!.val {
            current?.next = l1
            l1 = l1?.next
        } else {
            current?.next = l2
            l2 = l2?.next
        }
        
        current = current?.next
    }
    
    current?.next = l1 ?? l2
    
    return current
}


func mergeTwoSortedArary(_ l1: [Int], _ l2: [Int]) -> [Int] {
    var current = [Int]()
    var i = 0, j = 0
    let arra1 = l1, arra2 = l2
    
    
    while i < l1.count && j < l2.count {
        if arra1[i] < arra2[j] {
            current.append(arra1[i])
            i += 1
        } else {
            current.append(arra2[j])
            j += 1
            
        }
    }
    if i < l1.count {
            current += arra1[i...]
    }
    if j < l2.count {
        current += arra2[j...]
    }
    return current
}

