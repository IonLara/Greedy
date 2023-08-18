//
//  Gas.swift
//  Greedy
//
//  Created by Ion Sebastian Rodriguez Lara on 17/08/23.
//

import Foundation

class Gas {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var totalGas = 0
        var starting = 0
        var circuit = cost
        var gasCir = gas

        while starting < gas.count {
            totalGas = 0
            for i in 0..<gas.count {
                
                totalGas += gasCir[i]
                totalGas -= circuit[i]
                
                if totalGas < 0 {
                    break
                } else if i == (gas.count - 1) {
                    return starting
                }
            }
            let temp = circuit.remove(at: 0)
            circuit.append(temp)
            let gasTemp = gasCir.remove(at: 0)
            gasCir.append(gasTemp)
            starting += 1
        }
        return -1
    }
}
