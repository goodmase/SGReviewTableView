//
//  SGReviewHeaderTableViewCell.h
//  SGReviewTableView
//
//  Created by Stephen Goodman on 01/30/17.
//  Copyright © 2017 Stephen Goodman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SGBarView.h"
@class RateView;
@interface SGReviewHeaderTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet SGBarView *graphBar5;
@property (weak, nonatomic) IBOutlet SGBarView *graphBar4;
@property (weak, nonatomic) IBOutlet SGBarView *graphBar3;
@property (weak, nonatomic) IBOutlet SGBarView *graphBar2;
@property (weak, nonatomic) IBOutlet SGBarView *graphBar1;
@property (weak, nonatomic) IBOutlet RateView *overallRateView;
@property (weak, nonatomic) IBOutlet UILabel *averageRatingLabel;
@property (weak, nonatomic) IBOutlet UILabel *reviewCountLabel;

@end
