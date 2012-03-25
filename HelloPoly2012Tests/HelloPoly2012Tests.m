//
//  HelloPoly2012Tests.m
//  HelloPoly2012Tests
//
//  Created by Cameron Lane on 3/25/12.
//  Copyright (c) 2012 Adamanteus Software, LLC. All rights reserved.
//

#import "HelloPoly2012Tests.h"

@implementation HelloPoly2012Tests {

}

- (void)setUp
{
    [super setUp];
    polygon = [[PolygonShape alloc] init];
}

- (void)tearDown
{
    // Tear-down code here.
    [super tearDown];
}

- (void)testInit {
    STAssertNotNil(polygon, @"Improper initialization of polygon object");
}

@end
