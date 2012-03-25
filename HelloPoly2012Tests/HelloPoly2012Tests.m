//
//  HelloPoly2012Tests.m
//  HelloPoly2012Tests
//
//  Created by Cameron Lane on 3/25/12.
//  Copyright (c) 2012 Adamanteus Software, LLC. All rights reserved.
//

#import "HelloPoly2012Tests.h"


@implementation HelloPoly2012Tests {
    NSString *initError;
}

- (void)setUp
{
    [super setUp];
    polygon = [[PolygonShape alloc] init];
    polygon2 = [[PolygonShape alloc] initWithNumberOfSides:3];
    initError = @"Improper initialization of polygon object";
}

- (void)tearDown
{
    // Tear-down code here.
    [super tearDown];
}

- (void)testInit {
    STAssertNotNil(polygon, initError);
}

- (void) testInitWithArguments{
    STAssertNotNil(polygon2, initError);
}
@end
