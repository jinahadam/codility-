//
//  PermutationCheck.swift
//  codalityTests
//
//  Created by Jinah Adam on 10/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

import XCTest


class PermutationCheck: XCTestCase {

    public func solution(_ A : inout [Int]) -> Int {
        let n = A.count
        let total = n * (n + 1)/2
        return total == Set(A).reduce(0,+) ? 1 : 0
    }

    func testPermCheck() {
        var a = [4,1,3,2]
        assert(solution(&a) == 1)
        a = [4,1,3]
        assert(solution(&a) == 0)
        a = [1, 4, 1]
        assert(solution(&a) == 0)
    }
}
