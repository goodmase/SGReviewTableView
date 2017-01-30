//
//  SGReviewTableViewController.h
//  Pods
//
//  Created by Stephen Goodman on 1/30/17.
//
//

#import <UIKit/UIKit.h>
@class SGReview;
@interface SGReviewTableViewController : UITableViewController

@property (nonatomic, strong) NSArray<SGReview *> *reviews;
@property (nonatomic, strong) UIColor *graphBarColor;


-(instancetype)initWithReviews:(NSArray<SGReview *> *)reviews;

@end
