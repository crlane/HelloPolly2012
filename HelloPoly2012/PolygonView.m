//
//  PolygonView.m
//  HelloPoly2012
//
//  Created by Cameron Lane on 3/25/12.
//  Copyright (c) 2012 Adamanteus Software, LLC. All rights reserved.
//

#import "PolygonView.h"

@implementation PolygonView 

@synthesize numSides;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/* This is code copy and pasted from the Stanford iPhone assignment 3 information */
+ (NSArray *)pointsForPolygonInRect:(CGRect)rect numberOfSides:(int)sides { 
	
	CGPoint center = CGPointMake(rect.size.width / 2.0, rect.size.height / 2.0); 
	float radius = 0.9 * center.x; 
	NSMutableArray *result = [NSMutableArray array];
	float angle = (2.0 * M_PI) / sides; 
	float exteriorAngle = M_PI - angle; 
	float rotationDelta = angle - (0.5 * exteriorAngle);
	
	for (int currentAngle = 0; currentAngle < sides; currentAngle++) { 
		float newAngle = (angle * currentAngle) - rotationDelta; 
		float curX = cos(newAngle) * radius; 
		float curY = sin(newAngle) * radius;
		[result addObject:[NSValue valueWithCGPoint:CGPointMake(center.x + curX, center.y + curY)]];
	} return result;
}

- (void)drawRect:(CGRect)rect {
    
	/* get current graphics state.  Set bounds and background */
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGRect bounds = [self bounds];
	
	[[UIColor grayColor] set];
	UIRectFill(bounds);
	
	/* this uses class method (taken from Stanford iPhone course assignment sheet) to create an array of points for the polygon drawing
     still need to implement with a call to either Controller or PolygonShape (to get number of sides dynamically) */
	NSArray *drawingPoints = [PolygonView pointsForPolygonInRect:bounds	numberOfSides:numSides];	
	
    
	/* these two are necessary because of the way the class method 'pointsForPolygonInRect' wraps CGvalues for use in the NSArray (must be objects) */	
	
	NSValue *originValue = [drawingPoints objectAtIndex:0]; // the index is hard coded, which might be a bad thing.  If the array is empty, we get a crash. 
	
	CGPoint originPoint = [originValue CGPointValue];
	
	
	
	/* set the current path within the context.  Move to the origin for the polygon */
	CGContextBeginPath(context);
	CGContextMoveToPoint(context, originPoint.x, originPoint.y);
	
	/* loop trough the NSArray and retrieve points.  After that is done, you must draw the path, then stroke/fill/outline */
	for (NSValue *value in drawingPoints) {
		
		CGPoint newpoint = [value CGPointValue];
        
		CGContextAddLineToPoint(context, newpoint.x, newpoint.y);
		
	}
	
	/* close path, fill and stroke */
	CGContextClosePath(context);
	[[UIColor blueColor] setFill];
	[[UIColor blackColor] setStroke];
	CGContextDrawPath(context, kCGPathFillStroke);
    
    
}

@end
