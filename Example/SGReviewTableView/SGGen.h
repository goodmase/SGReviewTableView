//
//  SGGen.h
//  SGReviewTableView
//
//  Created by Stephen Goodman on 1/30/17.
//  Copyright © 2017 goodmase. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SGGen : NSObject

+(NSString *)randomParagraph;
+(double)randomRating;
+(NSDate *)generateRandomDateWithinDaysBeforeToday:(NSUInteger)days;
@end
