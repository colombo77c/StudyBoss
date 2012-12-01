//
//  DetailViewController.h
//  Study Boss
//
//  Created by Daniel Judd on 11/29/12.
//  Copyright (c) 2012 Daniel Judd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController {
    IBOutlet UILabel *workSeconds;
    IBOutlet UILabel *breakSeconds;
    NSTimer* timer;
    int workInt;
    int breakInt;
    bool rest;
    bool start;
    NSMutableArray *tableArray;
}

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) NSDate* workTime;
@property (strong, nonatomic) NSDate* breakTime;

-(IBAction)start:(id)sender;
-(void) countUp;


@end
