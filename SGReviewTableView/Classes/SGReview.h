//
//  SGReview.h
//  Pods
//
//  Created by Stephen Goodman on 1/30/17.
//
//

#import <Foundation/Foundation.h>

@interface SGReview : NSObject

/** Initialize with required parameters.
 @param rating The rating for this review
 @param content The text content of the review
 @param date The date the review was written
 */
-(instancetype)initWithRating:(double)rating content:(NSString *)content andDate:(NSDate *)date;

/// The text content of the review
@property (nonatomic, copy) NSString *content;

/// The rating of the review 0.0-5.0
@property (nonatomic, assign) double rating;

/// The date the review was written
@property (nonatomic, strong) NSDate *date;

@end
