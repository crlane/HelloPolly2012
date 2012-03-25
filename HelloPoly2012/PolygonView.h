//
//  PolygonView.h
//  HelloPoly2012
//
//  Created by Cameron Lane on 3/25/12.
//  Copyright (c) 2012 Adamanteus Software, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PolygonView : UIView{
    
}
@property int numSides;

+ (NSArray *)pointsForPolygonInRect:(CGRect)rect numberOfSides:(int)sides;
@end
