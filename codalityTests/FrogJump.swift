//
//  FrogJump.swift
//  codalityTests
//
//  Created by Jinah Adam on 9/2/19.
//  Copyright © 2019 Jinah Adam. All rights reserved.
//

import XCTest

class FrogJump: XCTestCase {

    public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        return Int(ceil((Double(Y) / Double(D)) - (Double(X)/Double(D))))

    }

    func testFrogJump() {
        assert(solution(10, 85, 30) == 3)
        assert(solution(1, 5, 2) == 2)

    }

}
