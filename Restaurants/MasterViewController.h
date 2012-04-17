//
//  MasterViewController.h
//  Restaurants
//
//

#import "Restaurant.h"
#import "DetailViewController.h"
#import <UIKit/UIKit.h>

@interface MasterViewController : UITableViewController
{
    NSMutableArray* restaurants;
}

@property(nonatomic, retain) NSMutableArray* restaurants;
@end
