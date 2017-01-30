//
//  SGBarView.h
//  Pods
//
//  Created by Stephen Goodman on 1/30/17.
//
//

#import <UIKit/UIKit.h>

@interface SGBarView : UIView

@property (nonatomic, assign) float percentage;
@property (nonatomic, strong) UIColor *barColor;

-(instancetype)initWithBarColor:(UIColor *)barColor;

@end
