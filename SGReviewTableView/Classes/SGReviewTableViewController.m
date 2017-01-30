//
//  SGReviewTableViewController.m
//  Pods
//
//  Created by Stephen Goodman on 1/30/17.
//
//

#import "SGReviewTableViewController.h"
#import "SGReview.h"
#import "SGReviewHeaderTableViewCell.h"
#import "SGReviewTableViewCell.h"
#import "RateView.h"

static NSString *ReviewCellIdentifier = @"ReviewCell";
static NSString *HeaderCellIdentifier = @"HeaderCell";
@interface SGReviewTableViewController ()

@property (nonatomic, strong) SGReviewHeaderTableViewCell *reviewHeaderCell;

@end

@implementation SGReviewTableViewController

-(instancetype)initWithReviews:(NSArray *)reviews{
    self = [super init];
    if (self) {
        _reviews = reviews;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSBundle * bundle = [NSBundle bundleForClass:[SGReviewTableViewController class]];
    [self.tableView registerNib:[UINib nibWithNibName:@"SGReviewTableViewCell" bundle:bundle] forCellReuseIdentifier:ReviewCellIdentifier];
    [self.tableView registerNib:[UINib nibWithNibName:@"SGReviewHeaderTableViewCell" bundle:bundle] forCellReuseIdentifier:HeaderCellIdentifier];
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 72;
    self.tableView.allowsSelection = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(double)reviewPercentage:(NSArray *)reviews withRating:(NSInteger)rating
{
    NSInteger count = 0;
    if ([reviews count] == 0) {
        return 0;
    }
    int rounded;
    for (SGReview *review in reviews) {
        rounded =  (int)(review.rating + 0.5);
        if (rounded == rating) {
            count += 1;
        }
    }
    
    return (double)count/[reviews count];
}
-(double)averageRatingForReviews:(NSArray *)reviews
{
    if ([reviews count] == 0){
        return 0.0;
    }
    double total = 0.0;
    for (SGReview *review in reviews) {
        total += review.rating;
    }
    return total/[reviews count];
}

-(void)updateReviewLabels
{

    SGReviewHeaderTableViewCell *cell = self.reviewHeaderCell;
    
    cell.graphBar1.percentage = 0;
    NSArray *graphBarObjects = @[cell.graphBar1, cell.graphBar2, cell.graphBar3, cell.graphBar4, cell.graphBar5];
    float animationTime = 1;
    float delayStep = 0.1;
    float totalDelay = 0.5;
    for (int i = 5; i > 0; i--) {
        SGBarView *view = graphBarObjects[i-1];
        view.percentage = 0;
        float p = [self reviewPercentage:self.reviews withRating:i];
        float t = MAX(0.3, animationTime*p);
        [UIView animateWithDuration:t delay:totalDelay options:UIViewAnimationOptionCurveEaseIn animations:^{
            view.percentage = p;
        } completion:nil];
        totalDelay += delayStep;
    }
}


#pragma mark - Table view data source
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewAutomaticDimension;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    } else {
        return [self.reviews count];
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        SGReviewHeaderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:HeaderCellIdentifier forIndexPath:indexPath];
        RateView* rv = cell.overallRateView;
        double averageRating = [self averageRatingForReviews:self.reviews];
        rv.rating = averageRating;
        rv.canRate = NO;
        rv.starSize = 24.0f;
        rv.starNormalColor = [UIColor whiteColor];
        rv.starFillColor = [UIColor yellowColor];
        rv.starBorderColor = [UIColor darkGrayColor];
        
        cell.averageRatingLabel.text = [NSString stringWithFormat:@"%.1f/5.0", averageRating];
        cell.reviewCountLabel.text = [NSString stringWithFormat:@"based on %lu reviews", (unsigned long)[self.reviews count]];
        self.reviewHeaderCell = cell;
        return cell;
        
    } else{
        SGReviewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ReviewCellIdentifier forIndexPath:indexPath];
        SGReview *review = [self.reviews objectAtIndex:indexPath.row];
        RateView* rv = cell.rateViewProperties;
        
        rv.rating = review.rating;
        rv.canRate = NO;
        rv.starSize = 14.0f;
        rv.starNormalColor = [UIColor whiteColor];
        rv.starFillColor = [UIColor yellowColor];
        rv.starBorderColor = [UIColor darkGrayColor];
        
        NSDateFormatter *dateFormat = [NSDateFormatter new];
        [dateFormat setDateFormat:@"yyyy-M-d"];
        NSString *dateString = [dateFormat stringFromDate:review.date];
        cell.dateLabelProperties.text = dateString;
        cell.reviewTextProperties.text = review.content;
        
        
        return cell;
    }
    
    
}
-(void) tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([indexPath row] == ((NSIndexPath*)[[tableView indexPathsForVisibleRows] lastObject]).row){
        [self updateReviewLabels];
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 1) {
        return 10;
    } else{
        return 1;
    }
}

@end
