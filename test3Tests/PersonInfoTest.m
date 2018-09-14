//
//  PersonInfoTest.m
//  test3Tests
//
//  Created by 裴波波 on 2018/7/24.
//  Copyright © 2018年 裴波波. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"

@interface PersonInfoTest : XCTestCase
@end

@implementation PersonInfoTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}



-(void)testPersonAge{
    Person * per = [Person new];
    per.age = 20;
    [self checkAge:per];
}

-(void)checkAge:(Person *)per{
    XCTAssert(per.age > 0, @"年龄不合法");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        NSMutableArray * mutArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < 9999; i++) {
            NSObject * object = [[NSObject alloc] init];
            [mutArray addObject:object];
        }
    }];
}

@end
