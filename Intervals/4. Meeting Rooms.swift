//
//  4. Meeting Rooms.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation

func meetingRooms(_ intervals: [[Int]]) -> Bool {
    var sortedMeeting = intervals.sorted { $0[0] < $1[0] }
    
    for i in 1..<sortedMeeting.count {
        if sortedMeeting[i][0] <= sortedMeeting[i-1][1] {
            return false
        }
    }
    return true
}
