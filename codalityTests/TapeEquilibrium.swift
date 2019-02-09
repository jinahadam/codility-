//
//  TapeEquilibrium.swift
//  codalityTests
//
//  Created by Jinah Adam on 9/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

import XCTest

class TapeEquilibrium: XCTestCase {

    public func solution(_ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        var rightSum = A.reduce(0,+) - A[0]
        var leftSum = A[0]
        var minSum = abs(rightSum - leftSum)
        for p in 1..<A.count - 1 {
            leftSum = leftSum + A[p]
            rightSum = rightSum - A[p]
            if abs(rightSum - leftSum) <= minSum {
                minSum = abs(rightSum - leftSum)
            }
        }

        return minSum
    }

    func testTape() {
         var a = [3,1,2,4,3]
        assert(solution(&a) == 1)
        a = [-1000, 1000]
        assert(solution(&a) == 2000)

        
    }


}
