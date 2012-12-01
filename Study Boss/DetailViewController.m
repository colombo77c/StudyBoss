//
//  DetailViewController.m
//  Study Boss
//
//  Created by Daniel Judd on 11/29/12.
//  Copyright (c) 2012 Daniel Judd. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

-(void)countUp {
    if (rest == NO) {
        workInt += 1;
        workSeconds.text = [NSString stringWithFormat:@"%i", workInt];
    }
    else {
        breakInt += 1;
        breakSeconds.text = [NSString stringWithFormat:@"%i", breakInt];
    }

}

-(IBAction)start:(id)sender {
    rest = !rest;
    if (start == NO) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countUp) userInfo:nil repeats:YES];
        start = YES;
        rest = NO;
    }
    
    if (rest == NO)
        [sender setTitle:@"Take a Break" forState:UIControlStateNormal];
    else
        [sender setTitle:@"Back to Work" forState:UIControlStateNormal];
}

#pragma mark - Managing the table to list work and breaks



#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        //seconds.text = [[self.detailItem valueForKey:@"timeStamp"] description];
    }
}

- (void)viewDidLoad
{
    tableArray = [[NSMutableArray alloc] init];
    start = NO;
    workInt = 0;
    breakInt = 0;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
