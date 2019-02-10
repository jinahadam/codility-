//
//  MaxCounter.swift
//  codalityTests
//
//  Created by Jinah Adam on 10/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

import XCTest

class MaxCounter: XCTestCase {
    public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
        var counters = Array.init(repeating: 0, count: N)
        var lastUdpate = 0
        var max = 0
        for idx in 0..<A.count {
            if A[idx] == 0 { continue }
            if A[idx] > N {
                lastUdpate = max
            } else {
                if  counters[A[idx] - 1] < lastUdpate {
                    counters[A[idx] - 1] = lastUdpate + 1
                } else {
                    counters[A[idx] - 1] += 1
                }
                if counters[A[idx] - 1] > max {
                    max = counters[A[idx] - 1]
                }
            }
        }

        for idx in 0..<counters.count {
            if counters[idx] < lastUdpate {
                counters[idx] = lastUdpate
            }
        }
        return counters
    }

    func testMaxCounter() {
        var a = [3,4,4,6,1,4,4]
        assert(solution(5, &a) == [3, 2, 2, 4, 2])
        a = [1,1,1,1,1,1,1]
        assert(solution(2, &a) == [7,0])
        a = [1,1,1,1,1,1,10000000]
        assert(solution(2, &a) == [6,6])
        a = [5]
        assert(solution(1, &a) == [0])
        a = [0]
        assert(solution(100, &a) == Array.init(repeating: 0, count: 100))
        a = [5,3,0]
        assert(solution(0, &a) == [])
        a = []
        assert(solution(3, &a) == [0,0,0])
        a = Array(1...100_000)
        assert(solution(100_000, &a) == Array.init(repeating: 1, count: 100_000))
    }


}
