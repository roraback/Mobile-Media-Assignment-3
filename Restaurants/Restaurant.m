//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"
#import "Review.h"


@implementation Restaurant
@synthesize address, name, cuisineType, yearOpened, reviews, isFavorite;


-(id)init
{
    if (self = [super init])
    {
        self.reviews = [[NSMutableArray alloc] init];
    }
    return self;
}


-(int)age
{
    return 2012 - yearOpened;
}

-(float)averageCustomerReview
{
    float totalStars=0;
    float counter = 0;
    for (Review* review in reviews){
        totalStars += review.score;
        counter ++;
    }
    return totalStars/counter;
}

-(Review*)mostHelpfulReview
{
    int mostHelpfulRating = 0;
    Review* HelpfulReview = [[Review alloc] init];
    for (Review* review in reviews) {
        if (review.numberOfHelpfulReviews > 5) {
            float helpfulRating = review.numberOfHelpfulReviews * 100 / (float)(review.numberOfHelpfulReviews + review.numberOfUnhelpfulReviews);
            if (helpfulRating > mostHelpfulRating) {
                mostHelpfulRating = helpfulRating;
                HelpfulReview = review;
            }
        }
        
    }
    switch (mostHelpfulRating) {
        case 0:
            return nil;
            break;
        default:
            return HelpfulReview;
            break;
    }
}

@end
