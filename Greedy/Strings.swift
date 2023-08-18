//
//  Strings.swift
//  Greedy
//
//  Created by Ion Sebastian Rodriguez Lara on 17/08/23.
//

import Foundation

class Strings {
    func partitionLabels(_ s: String) -> [Int] {
        
        var lastOccurrence: [Character: Int] = [:]
        for (index, char) in s.enumerated() {
            lastOccurrence[char] = index
        }
        
        var result: [Int] = []
        var start = 0
        var end = 0
        
        for (index, char) in s.enumerated() {
            end = max(end, lastOccurrence[char] ?? 0)
            if index == end {
                result.append(end - start + 1)
                start = end + 1
            }
        }
        return result
    }
}
