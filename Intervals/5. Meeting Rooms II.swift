//
//  5. Meeting Rooms II.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation

func meetingRoomsII(_ intervals: [[Int]]) -> Int {
    let starts = intervals.map {$0[0]}.sorted()
    let ends = intervals.map {$0[1]}.sorted()
    
    var rooms = 0, endPointer = 0
    
    for start in starts {
        if start >= ends[endPointer] {
            endPointer += 1
        } else {
            rooms += 1
        }
    }
    return rooms
}
