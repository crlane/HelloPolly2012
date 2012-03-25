//
//  HelloPoly2012Tests.h
//  HelloPoly2012Tests
//
//  Created by Cameron Lane on 3/25/12.
//  Copyright (c) 2012 Adamanteus Software, LLC. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "PolygonShape.h"

extern NSString *const INIT_ERROR;
extern NSString *const WRONG_SIDES;


@interface HelloPoly2012Tests : SenTestCase {
 
    PolygonShape *polygonDefault;
    PolygonShape *polygonMin;
    PolygonShape *polygonMax;
}

- (void) testInit;
- (void) testInitWithArguments;

@end
