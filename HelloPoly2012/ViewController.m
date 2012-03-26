//
//  ViewController.m
//  HelloPoly2012
//
//  Created by Cameron Lane on 3/25/12.
//  Copyright (c) 2012 Adamanteus Software, LLC. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    polygon = [[PolygonShape alloc] init];
    nameLabel.text = polygon.name;
    sidesLabel.text = [NSString stringWithFormat: @"%d",polygon.numberOfSides];
    polygonView.numSides = polygon.numberOfSides;
    stepper.value = polygon.numberOfSides;
    stepper.minimumValue = MIN_NUMBER_OF_SIDES;
    stepper.maximumValue = MAX_NUMBER_OF_SIDES;
    [polygonView setNeedsDisplay];
}

- (void)viewDidUnload
{
    polygonView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)changeNumSides:(id)sender{
    polygon.numberOfSides = (int) stepper.value;
    nameLabel.text = polygon.name;
    sidesLabel.text = [NSString stringWithFormat: @"%d", polygon.numberOfSides];
    polygonView.numSides = polygon.numberOfSides;
    [polygonView setNeedsDisplay];
}


@end
