//
//  ReviewViewController.h
//  Restaurants
//
//  Created by Kenneth Roraback on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Restaurant.h"

@interface ReviewViewController : UITableViewController
{
    Restaurant* restaurant;
}
@property (nonatomic, retain) NSObject *restaurant;

@end
