//
//  DetailViewController.h
//  Study Boss
//
//  Created by Daniel Judd on 11/29/12.
//  Copyright (c) 2012 Daniel Judd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
