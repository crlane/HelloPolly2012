//
//  HelloPoly2012Tests.m
//  HelloPoly2012Tests
//
//  Created by Cameron Lane on 3/25/12.
//  Copyright (c) 2012 Adamanteus Software, LLC. All rights reserved.
//

#import "HelloPoly2012Tests.h"

NSString *const INIT_ERROR = @"Improper initialization of polygon object.";
NSString *const WRONG_SIDES = @"Wrong number of sides.";

@implementation HelloPoly2012Tests {

}

- (void)setUp
{
    [super setUp];
    polygonDefault = [[PolygonShape alloc] init];
    polygonMin = [[PolygonShape alloc] initWithNumberOfSides: MIN_NUMBER_OF_SIDES];
    polygonMax = [[PolygonShape alloc] initWithNumberOfSides: MAX_NUMBER_OF_SIDES];
   
}

- (void)tearDown
{
    // Tear-down code here.
    [super tearDown];
}

- (void)testInit {
    STAssertNotNil(polygonDefault, INIT_ERROR);
    STAssertEquals(polygonDefault.numberOfSides, DEFAULT_NUMBER_OF_SIDES, INIT_ERROR);
}

- (void) testInitWithArguments{
    STAssertNotNil(polygonMin, INIT_ERROR);
    STAssertEquals(polygonMin.numberOfSides, MIN_NUMBER_OF_SIDES, INIT_ERROR, WRONG_SIDES);
    STAssertEquals(polygonMax.numberOfSides, MAX_NUMBER_OF_SIDES, INIT_ERROR, WRONG_SIDES);
}
@end
