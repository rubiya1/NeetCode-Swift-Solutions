//
//  4. Remove Nth Node From End of List.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 25/12/24.
//

import Foundation

func removeNthNodeFromEndOfList(_ head: ListNode?, _ n: Int) -> ListNode? {
    guard let head else { return nil }
    let preHead = ListNode(0)
    preHead.next = head
    var slow = preHead
    var fast = preHead
    
    for _ in 0..<n {
        fast = fast.next!
    }
    
    while fast.next != nil {
        slow = slow.next!
        fast = fast.next!
    }
    
    slow.next = slow.next?.next
    
    return preHead.next
}

func removeNthNodeFromEndOfArrayList(in array: [Int], _ n: Int) -> [Int] {
    let idx = array.count - n
    return array.filter { $0 != array[idx]}
}
