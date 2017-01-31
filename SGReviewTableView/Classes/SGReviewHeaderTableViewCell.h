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

//// The bar view that displays percent of reviews between 4.5 and 5.0
@property (weak, nonatomic) IBOutlet SGBarView *graphBar5;

//// The bar view that displays percent of reviews between 3.5 and 4.5
@property (weak, nonatomic) IBOutlet SGBarView *graphBar4;

//// The bar view that displays percent of reviews between 2.5 and 3.5
@property (weak, nonatomic) IBOutlet SGBarView *graphBar3;

//// The bar view that displays percent of reviews between 1.5 and 2.5
@property (weak, nonatomic) IBOutlet SGBarView *graphBar2;

//// The bar view that displays percent of reviews between 0.5 and 1.5
@property (weak, nonatomic) IBOutlet SGBarView *graphBar1;

//// The RateView that displays the average rating
@property (weak, nonatomic) IBOutlet RateView *overallRateView;

//// Label for the Average Rating
@property (weak, nonatomic) IBOutlet UILabel *averageRatingLabel;

//// Label for the number of reviews
@property (weak, nonatomic) IBOutlet UILabel *reviewCountLabel;

@end
