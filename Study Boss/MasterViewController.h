//
//  MasterViewController.h
//  Study Boss
//
//  Created by Daniel Judd on 11/29/12.
//  Copyright (c) 2012 Daniel Judd. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
