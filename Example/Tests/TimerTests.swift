//
//  TimerTests.swift
//  SwiftyEssentials_Tests
//
//  Created by Josue Meza Peña on 12-03-18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest

class TimerTests: XCTestCase {
    
    // MARK: - XCTestCase methods
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}

extension TimerTests {
    
    func testCallbackInDuration() {
        let e = self.expectation(description: "timer_callback_in_duration")
        Timer.callbackInDuration(0.5, callback: {
            e.fulfill()
            XCTAssert(true)
        })
        // Run waiter
        self.waitForExpectations(timeout: TimeInterval(0.6), handler: nil)
    }
    
}
