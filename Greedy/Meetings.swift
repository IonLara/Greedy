//
//  Meetings.swift
//  Greedy
//
//  Created by Ion Sebastian Rodriguez Lara on 17/08/23.
//

import Foundation

func canAttendMeetings(_ intervals: [[Int]]) -> Bool {
    let sortedIntervals = intervals.sorted { $0[0] < $1[0] }
    
    for i in 0..<sortedIntervals.count - 1 {
        if sortedIntervals[i][1] > sortedIntervals[i + 1][0] {
            return false
        }
    }
    
    return true
}
