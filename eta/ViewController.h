//
//  ViewController.h
//  eta
//
//  Created by Ankith Konda on 7/18/14.
//  Copyright (c) 2014 Ankith Konda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

#import "AFHTTPRequestOperationManager.h"



@interface ViewController : UITableViewController



@property (strong, nonatomic) IBOutlet UITableView *friendsTableView;

@property (strong, nonatomic) NSMutableArray *friendsArray;


@property (strong, nonatomic) CLLocationManager *locationManager;
@end

