//
//  ArrayNonOddElement.swift
//  codalityTests
//
//  Created by Jinah Adam on 9/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

import XCTest


class ArrayNonOddElement: XCTestCase {

    public func solution(_ A : inout [Int]) -> Int {
        var occurence = [Int: Int]()
        for idx in (0..<A.count) {
            occurence[A[idx]] = occurence[A[idx]] == nil ? 1 : occurence[A[idx]]! + 1
        }
        return occurence.filter { $1 % 2 != 0 }.keys.first!
    }

    func testArrayOddOccurece() {
        var a = [9,3,9,3,9,7,9]
        assert(solution(&a) == 7)
    }

}
