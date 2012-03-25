//
//  HelloPoly2012Tests.h
//  HelloPoly2012Tests
//
//  Created by Cameron Lane on 3/25/12.
//  Copyright (c) 2012 Adamanteus Software, LLC. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "PolygonShape.h"

@interface HelloPoly2012Tests : SenTestCase {
    PolygonShape *polygon;
    PolygonShape *polygon2;
}

- (void) testInit;
- (void) testInitWithArguments;

@end
