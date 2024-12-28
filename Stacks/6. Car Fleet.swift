//
//  6. Car Fleet.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 21/12/24.
//

import Foundation


func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int  {
    let cars = zip(position,speed).sorted { $0.0 > $1.0 }
    var stack = [Double]()
    
    for car in cars {
        let pos = car.0
        let speed = car.1
        
        let time = Double(target - pos) / Double(speed)
        if stack.isEmpty || time > stack.last! {
            stack.append(time)
        }
    }
    
    return stack.count
}
