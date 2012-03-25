//
//  PolygonShape.h
//  HelloPoly2012
//
//  Created by Cameron Lane on 3/25/12.
//  Copyright (c) 2012 Adamanteus Software, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PolygonShape : NSObject {
    
}

@property (nonatomic) int numberOfSides;
@property (nonatomic, retain) NSString* name;

- (id) init;
- (id) initWithNumberOfSides: (int) sides;
@end
