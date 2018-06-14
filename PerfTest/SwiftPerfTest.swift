//
//  SwiftPerfTest.swift
//  PerfTest
//
//  Created by Matt Smollinger on 6/14/18.
//  Copyright © 2018 Matt Smollinger. All rights reserved.
//

import Foundation

class PureSwiftTestCase {
    func giveMeClosure(closure: ()-> Void) {
        closure()
    }
}

@objc class ObjcToSwiftPerfTestClass: NSObject {
    @objc  func giveMeClosure(closure: ()-> Void) {
        closure()
    }
}
