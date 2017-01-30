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


@property (weak, nonatomic) IBOutlet RateView *rateViewProperties;
@property (weak, nonatomic) IBOutlet UILabel *dateLabelProperties;
@property (weak, nonatomic) IBOutlet UILabel *reviewTextProperties;

@end
