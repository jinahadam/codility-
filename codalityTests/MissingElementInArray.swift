//
//  MissingElementInArray.swift
//  codalityTests
//
//  Created by Jinah Adam on 9/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

import XCTest

class MissingElementInArray: XCTestCase {

    public func solution(_ A : inout [Int]) -> Int {
        var occurence = Array(repeating: false, count: A.count + 2)
        for j in A {
            if occurence[j] == false {
                occurence[j] = true
            }
        }
        return occurence.lastIndex(of: false)!
    }

    func testMissingElement() {
        var a = [2,3,1,5]
        assert(solution(&a) == 4)
    }




}
