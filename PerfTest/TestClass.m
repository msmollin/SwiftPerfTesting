//
//  TestClass.m
//  PerfTest
//
//  Created by Matt Smollinger on 6/13/18.
//  Copyright © 2018 Matt Smollinger. All rights reserved.
//

#import "TestClass.h"
#import "PerfTest-Swift.h"

#import <os/log.h>

@implementation TestClass {
    ObjcToSwiftPerfTestClass *_swiftTestClass;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _swiftTestClass = [[ObjcToSwiftPerfTestClass alloc] init];
    }
    return self;
}

- (void)someMethodThatTakesABlock:(void (^)(void))blockName
{
    blockName();
}

- (void)callSwiftFromObjcBlock
{
    [_swiftTestClass giveMeClosureWithClosure:^{
//        printf("Objective-C is great");
//        os_log(OS_LOG_DEFAULT, "Objective-C is great");
        usleep(100);
    }];
}

- (void)pureObjcBlockCall
{
    [self someMethodThatTakesABlock:^{
//        printf("Objective-C is great");
//        os_log(OS_LOG_DEFAULT, "Objective-C is great");
        usleep(100);
    }];
}

@end
