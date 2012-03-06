//
//  Review.h
//  Restaurants
//
//  Created by Kenneth Roraback on 3/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Review : NSObject
{
    NSString* reviewer;
    NSString* text;
    int score; //(1 to 5, how good the reviewer thought the restaurant was)
    int numberOfHelpfulReviews;
    int numberOfUnhelpfulReviews;
}
@property(readwrite, strong) NSString* reviewer;
@property(readwrite, strong) NSString* text;
@property(readwrite) int score;
@property(readwrite) int numberOfHelpfulReviews;
@property(readwrite) int numberOfUnhelpfulReviews;

-(float)helpfulPercentage;

@end
