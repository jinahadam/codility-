//
//  MissingInteger.swift
//  codalityTests
//
//  Created by Jinah Adam on 10/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

import XCTest

class MissingInteger: XCTestCase {

    public func solution(_ A : inout [Int]) -> Int {
        var returnValue = 1
        for item in A.sorted() {
            if item == returnValue {
                returnValue += 1
            }
        }
        return returnValue
    }

    func testMissingInteger() {
        var a =  [1, 3, 6, 4, 1, 2]
        assert(solution(&a) == 5)
        a =  [1, 2, 3]
        assert(solution(&a) == 4)
        a =  [-1, -3]
        assert(solution(&a) == 1)
        a =  [0, -3]
        assert(solution(&a) == 1)
        a =  [0]
        assert(solution(&a) == 1)
        a =  [10000,100_000_000]
        assert(solution(&a) == 1)
        a =  [1,1,1,1,1,1]
        assert(solution(&a) == 2)
    }


}
