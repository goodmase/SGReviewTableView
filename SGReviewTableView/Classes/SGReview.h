//
//  SGReview.h
//  Pods
//
//  Created by Stephen Goodman on 1/30/17.
//
//

#import <Foundation/Foundation.h>

@interface SGReview : NSObject

-(instancetype)initWithRating:(double)rating content:(NSString *)content andDate:(NSDate *)date;

@property (nonatomic, copy) NSString *content;
@property (nonatomic, assign) double rating;
@property (nonatomic, strong) NSDate *date;

@end
