//
//  ReviewViewController.m
//  Restaurants
//
//  Created by Kenneth Roraback on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ReviewViewController.h"

@implementation ReviewViewController

@synthesize restaurant;


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return restaurant.reviews.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellIdentifier = @"ReviewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    UILabel* reviewTextLabel = (UILabel*)[cell viewWithTag:1];
    UILabel* reviewHelpfulnessLabel = (UILabel*)[cell viewWithTag:2];
    Review* reviewForIndexPath = [restaurant.reviews objectAtIndex:indexPath.row];
    reviewTextLabel.text = [NSString stringWithFormat:@"%@ — %@", reviewForIndexPath.text, reviewForIndexPath.reviewer];
    reviewHelpfulnessLabel.text = [NSString stringWithFormat:@"%i of %i found this review helpful", reviewForIndexPath.numberOfHelpfulReviews,reviewForIndexPath.numberOfUnhelpfulReviews+reviewForIndexPath.numberOfHelpfulReviews];
    return cell;
}


@end
