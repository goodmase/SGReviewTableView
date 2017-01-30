//
//  SGReview.m
//  Pods
//
//  Created by Stephen Goodman on 1/30/17.
//
//

#import "SGReview.h"

@implementation SGReview


-(instancetype)initWithRating:(double)rating content:(NSString *)content andDate:(NSDate *)date{
    self = [super init];
    if (self){
        _rating = rating;
        _content = content;
        _date = date;
    }
    return self;
}
@end
