//
//  SGBarView.m
//  Pods
//
//  Created by Stephen Goodman on 1/30/17.
//
//

#import "SGBarView.h"

@interface SGBarView()

@property (nonatomic, strong) UIView *progressView;

@end

@implementation SGBarView

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.layer.contentsScale = [UIScreen mainScreen].scale*4;
        self.layer.shouldRasterize = YES;
        self.progressView = [[UIView alloc] initWithFrame:self.frame];
        if (!self.barColor) {
            self.barColor = [UIColor blueColor];
        }
        [self addSubview:self.progressView];
    }
    return self;
}

-(instancetype)initWithBarColor:(UIColor *)barColor
{
    self = [super init];
    if (self) {
        _barColor = barColor;
        _percentage = 0.0;
    }
    return self;
}
-(void)updateProgressView
{
    self.progressView.backgroundColor = _barColor;
    CGFloat viewWidth = self.frame.size.width;
    CGFloat progressWidth = viewWidth*_percentage;
    self.progressView.frame = CGRectMake(0, 0, progressWidth, self.frame.size.height);
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
}
- (void)display
{
    [self.layer setNeedsDisplay];
    [self.layer displayIfNeeded];
}
-(void)setPercentage:(float)percentage{
    
    if (percentage >= 1) {
        percentage = 1;
    } else if (percentage < 0.00) {
        percentage = 0;
    }
    _percentage = percentage;
    [self updateProgressView];
}

@end
