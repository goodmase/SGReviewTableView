//
//  SGReviewTableViewController.h
//  Pods
//
//  Created by Stephen Goodman on 1/30/17.
//
//

#import <UIKit/UIKit.h>

@interface SGReviewTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *reviews;
@property (nonatomic, strong) UIColor *graphBarColor;


-(instancetype)initWithReviews:(NSArray *)reviews;

@end
