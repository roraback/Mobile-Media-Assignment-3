//
//  ReviewViewController.m
//  Restaurants
//
//  Created by Kenneth Roraback on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ReviewViewController.h"

@implementation ReviewViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellIdentifier = @"ReviewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.textLabel.text = @"test";
    return cell;
}


@end
