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

//// Array of SGReviews
@property (nonatomic, strong) NSArray<SGReview *> *reviews;

/// UIColor of the histogram graph bars. Default is blue
@property (nonatomic, strong) UIColor *graphBarColor;

/** Initialize with required parameters.
 @param reviews An array of SGReview objects
 
 */
-(instancetype)initWithReviews:(NSArray<SGReview *> *)reviews;

@end
