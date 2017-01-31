//
//  SGBarView.h
//  Pods
//
//  Created by Stephen Goodman on 1/30/17.
//
//

#import <UIKit/UIKit.h>

@interface SGBarView : UIView

//// Percentage of the bar to be filled. Accepted values 0-1.0
@property (nonatomic, assign) float percentage;

//// The foreground color of the bar
@property (nonatomic, strong) UIColor *barColor;



/** Initialize with required parameters.
 @param barColor The foreground color of the bar
 */
-(instancetype)initWithBarColor:(UIColor *)barColor;

@end
