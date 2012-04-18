//
//  DetailViewController.m
//  Restaurants
//
//

#import "DetailViewController.h"
#import "ReviewViewController.h"

@implementation DetailViewController
@synthesize addressLabel;
@synthesize navigationHeader;
@synthesize cuisineLabel;
@synthesize ageLabel;
@synthesize helpfulReviewPercentageLabel;
@synthesize helpfulReviewLabel;
@synthesize reviewer;
@synthesize star1;
@synthesize star2;
@synthesize star3;
@synthesize star4;
@synthesize star5;
@synthesize restaurant;


@synthesize textOfReview;


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    Review* helpfulReview = [[Review alloc] init];
    helpfulReview = [restaurant mostHelpfulReview];
    int numStars = (int)(restaurant.averageCustomerReview + 0.5);
    addressLabel.text = [restaurant address];
    navigationHeader.title = [restaurant name];
    cuisineLabel.text = [restaurant cuisineType];
    ageLabel.text = [NSString stringWithFormat:@"Est. %i (%i years ago)", restaurant.yearOpened, [restaurant age]];
    if (helpfulReview != NULL) {
        helpfulReviewLabel.text = [[[helpfulReview text] stringByAppendingString:@"  –"] stringByAppendingString:[helpfulReview reviewer]];
        helpfulReviewPercentageLabel.text = [NSString stringWithFormat:@"Most helpful review – %d of %d people found this review helpful", [helpfulReview numberOfHelpfulReviews], [helpfulReview numberOfUnhelpfulReviews]+[helpfulReview numberOfHelpfulReviews]];
    } else {
        helpfulReviewLabel.text = @"Not enough helpful reviews, yet!";
        helpfulReviewPercentageLabel.text = @"";
    }
    
    switch (numStars) {
        case 5:
            star5.image = [UIImage imageNamed:@"Star_ON.png"];
        case 4:
            star4.image = [UIImage imageNamed:@"Star_ON.png"];
        case 3:
            star3.image = [UIImage imageNamed:@"Star_ON.png"];
        case 2:
            star2.image = [UIImage imageNamed:@"Star_ON.png"];
        case 1:
            star1.image = [UIImage imageNamed:@"Star_ON.png"];
            break;
        default:
            break;
    }
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ReviewViewController* reviewVC = (ReviewViewController*)[segue destinationViewController];
    reviewVC.restaurant = restaurant;
}



- (void)viewDidUnload
{
    [self setAddressLabel:nil];
    [self setNavigationHeader:nil];
    [self setCuisineLabel:nil];
    [self setAgeLabel:nil];
    [self setHelpfulReviewPercentageLabel:nil];
    [self setHelpfulReviewLabel:nil];
    [self setStar1:nil];
    [self setStar2:nil];
    [self setStar3:nil];
    [self setStar4:nil];
    [self setStar5:nil];
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end
