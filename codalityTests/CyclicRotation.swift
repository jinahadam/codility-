//
//  CyclicRotation.swift
//  codalityTests
//
//  Created by Jinah Adam on 9/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

import XCTest

class CyclicRotation: XCTestCase {

    public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
        // write your code in Swift 4.2.1 (Linux)
        for _ in 0..<K {
            if let lastElement = A.popLast() {
                A.insert(lastElement, at: 0)
            }
        }
        return A
    }


    func testCyclicRotation() {
        var a = [3, 8, 9, 7, 6]
        assert(solution(&a, 3) == [9, 7, 6, 3, 8])
    }


}
