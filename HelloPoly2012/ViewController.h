//
//  ViewController.h
//  HelloPoly2012
//
//  Created by Cameron Lane on 3/25/12.
//  Copyright (c) 2012 Adamanteus Software, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PolygonShape.h"
#import "PolygonView.h"

@interface ViewController : UIViewController {
    IBOutlet PolygonShape *polygon;
    IBOutlet PolygonView *polygonView;
    IBOutlet UILabel *nameLabel;
    IBOutlet UILabel *sidesLabel;
    IBOutlet UIStepper *stepper;
    
}

- (IBAction)changeNumSides:(id)sender;


@end
