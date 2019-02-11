//
//  PassingCars.swift
//  codalityTests
//
//  Created by Jinah Adam on 11/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

import XCTest

class PassingCars: XCTestCase {

    public func solution(_ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        /*
         A[0] = 0
         A[1] = 1
         A[2] = 0
         A[3] = 1
         A[4] = 1
 */
        var zeroCount = 0
        var count = 0
        for idx in 0..<A.count {
            if A[idx] == 0 {
                zeroCount += 1
            }
            if zeroCount > 0 {
                if A[idx] == 1 {
                    count += zeroCount
                    guard count <= 1_000_000_000 else { return -1 }
                }
            }
        }

        return count
    }

    func testPassingCars() {
        var a = [0,1,0,1,1]
        assert(solution(&a) == 5)
    }

}
