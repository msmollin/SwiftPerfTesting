//
//  TestClass.h
//  PerfTest
//
//  Created by Matt Smollinger on 6/13/18.
//  Copyright © 2018 Matt Smollinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestClass : NSObject

- (void)someMethodThatTakesABlock:(void (^)(void))blockName;
- (void)callSwiftFromObjcBlock;
- (void)pureObjcBlockCall;

@end
