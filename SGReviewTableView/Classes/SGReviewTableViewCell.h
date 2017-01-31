//
//  SGReviewTableViewCell.h
//  SGReviewTableView
//
//  Created by Stephen Goodman on 01/30/17.
//  Copyright © 2017 Stephen Goodman. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RateView;
@interface SGReviewTableViewCell : UITableViewCell

/// Rate view that shows the number of stars a review has
@property (weak, nonatomic) IBOutlet RateView *rateViewProperties;


/// The date of the review
@property (weak, nonatomic) IBOutlet UILabel *dateLabelProperties;


/// The review text
@property (weak, nonatomic) IBOutlet UILabel *reviewTextProperties;

@end
