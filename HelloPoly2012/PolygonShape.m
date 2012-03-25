//
//  PolygonShape.m
//  HelloPoly2012
//
//  Created by Cameron Lane on 3/25/12.
//  Copyright (c) 2012 Adamanteus Software, LLC. All rights reserved.
//

#import "PolygonShape.h"

static NSArray *names;
@implementation PolygonShape {
    
}

@synthesize numberOfSides;
@synthesize name;

+ (id) names {
    names = [[NSArray alloc] initWithObjects:
             @"Triangle",
             @"Square",
             @"Pentagon",
             @"Hexagon",  
             @"Heptagon",
             @"Octagon",
             @"Nonagon",
             @"Decagon",
             @"Hendecagon",
             @"Dodecagon",
             @"Triskadecagon",
             @"Tetradecagon",
             @"Pentadecagon",
             @"Hexadecagon",
             @"Heptadecagon",
             @"Octagdecagon",
             @"Ennedecagon",
             @"Icosagon",
           nil];
    return names;
}

- (id) init {
   return [self initWithNumberOfSides: DEFAULT_NUMBER_OF_SIDES];
}

- (id) initWithNumberOfSides: (int) sides {
    
    if([super init]){
        self.numberOfSides = sides;
    }
    
    return self;
}

- (id) name {
    return [PolygonShape.names objectAtIndex: self.numberOfSides - 3];
}

@end
