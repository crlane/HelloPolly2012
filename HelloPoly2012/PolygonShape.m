//
//  PolygonShape.m
//  HelloPoly2012
//
//  Created by Cameron Lane on 3/25/12.
//  Copyright (c) 2012 Adamanteus Software, LLC. All rights reserved.
//

#import "PolygonShape.h"

@implementation PolygonShape {
    
}

@synthesize numberOfSides;
@synthesize name;


- (id) init {
    [self initWithNumberOfSides: DEFAULT_NUMBER_OF_SIDES];
}

- (id) initWithNumberOfSides: (int) sides {
    if([super init]){
        self.numberOfSides = sides;
    }
    
    return self;
}

@end
