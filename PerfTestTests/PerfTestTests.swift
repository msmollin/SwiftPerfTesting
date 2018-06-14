//
//  PerfTestTests.swift
//  PerfTestTests
//
//  Created by Matt Smollinger on 6/13/18.
//  Copyright © 2018 Matt Smollinger. All rights reserved.
//

import XCTest
import os
@testable import PerfTest
//Other tests I'm poking at
//                print("Objective-C is great")
//                os_log("Objective-C is great")
//                usleep(100)

class PerfTestTests: XCTestCase {
    func testSwiftToObjcArrayAccess() {
        let array = [1,2,3,4,5]
        var x = 1
        for _ in 1...100000 {
            let testing:TestClass = TestClass();
            testing.someMethodThatTakesABlock ({
                x = array[0]
            })
        }
        print(x)
    }

    func testPureSwiftPerformanceArrayAccess() {
        let array = [1,2,3,4,5]
        var x = 1
        for _ in 1...100000 {
            let testing:PureSwiftTestCase = PureSwiftTestCase();
            testing.giveMeClosure {
                x = array[0]
            }
        }
        print(x)
    }
    
    func testBaselineArrayAccess() {
        let array = [1,2,3,4,5]
        var x = 1
        for _ in 1...100000 {
            x = array[0]
        }
        print(x)
    }
}
