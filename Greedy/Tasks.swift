//
//  Tasks.swift
//  Greedy
//
//  Created by Ion Sebastian Rodriguez Lara on 17/08/23.
//

import Foundation

class Task {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        var taskFrequency: [Character: Int] = [:]
        
        for task in tasks {
            taskFrequency[task, default: 0] += 1
        }
        
        let maxFreq = taskFrequency.values.max() ?? 0
        var maxCount = 0
        
        for freq in taskFrequency.values {
            if freq == maxFreq {
                maxCount += 1
            }
        }
        
        let partitions = maxFreq - 1
        let emptySlots = partitions * (n - (maxCount - 1))
        let availableTasks = tasks.count - (maxFreq * maxCount)
        let idleTime = max(0, emptySlots - availableTasks)
        
        return tasks.count + idleTime
    }
}
