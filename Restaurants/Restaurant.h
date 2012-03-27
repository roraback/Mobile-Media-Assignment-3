//
//  Restaurant.h
//  Restaurants
//

#import <Foundation/Foundation.h>
#import "Review.h"

@interface Restaurant : NSObject
{
    NSString* address;
    NSString* name;
    NSString* cuisineType;
    int helpfulRating;
    int yearOpened;
    NSMutableArray* reviews;
}
@property(readwrite, strong) NSString* address;
@property(readwrite, strong) NSString* name;
@property(readwrite, strong) NSString* cuisineType;
@property(readwrite) int yearOpened;

@property(nonatomic, retain) NSMutableArray* reviews;


-(int)age;
-(Review*)mostHelpfulReview;
-(id)init;

@end