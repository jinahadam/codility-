//
//  FallingLeafs.swift
//  codalityTests
//
//  Created by Jinah Adam on 10/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

import XCTest

class FallingLeafs: XCTestCase {

    public func solution(_ X : Int, _ A : inout [Int]) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        guard A.count >= X else { return -1 }
        var occurence = Array(repeating: false, count: A.count + 1)
        var count = 0
        for idx in 0..<A.count  {
            if occurence[A[idx]] == false {
                occurence[A[idx]] = true
                count += 1
            }
            if count == X {
                return idx

            }

        }
        return -1
    }

    func testFallingLeaves() {
        var a = [1,3,1,4,2,3,5,4]
        assert(solution(5, &a) == 6)
        a = [1]
        assert(solution(1, &a) == 0)
        a = [3]
        assert(solution(5, &a) == -1)
        a = [1, 1, 1, 1]
        assert(solution(2, &a) == -1)
    }

}
