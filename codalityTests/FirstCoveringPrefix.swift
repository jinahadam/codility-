//
//  FirstCoveringPrefix.swift
//  codalityTests
//
//  Created by Jinah Adam on 9/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

import XCTest

extension Array where Element == Int {
    func coveringPrefix() -> Int {
        for i in (0...count) {
            if Set(self[0...i]) == Set(self) {
                return i
            }
        }
        return count - 1
    }

}

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    var occur = Array(repeatElement(false, count: A.count))
    var returnVal = A.count - 1
    for idx in 0..<A.count {
        if occur[A[idx]] == false {
            occur[A[idx]] = true
            returnVal = idx
        }
    }
    return returnVal
}

class FirstCoveringPrefix: XCTestCase {

    func testCoveringPrefix() {
        var a = [2,2,1,0,1]
        assert(solution(&a) == 3)
    }

}
