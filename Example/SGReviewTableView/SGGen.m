//
//  SGGen.m
//  SGReviewTableView
//
//  Created by Stephen Goodman on 1/30/17.
//  Copyright © 2017 goodmase. All rights reserved.
//

#import "SGGen.h"

@implementation SGGen

+(NSString *)randomSentence
{
    NSArray *choices = @[@"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                         @"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                         @"Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                         @"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."];
    uint32_t rnd = arc4random_uniform((uint32_t)[choices count]);
    return [choices objectAtIndex:rnd];
}
+(NSString *)randomParagraph{
    NSString *paragraph = @"";
    for (int i = 0; i < (arc4random_uniform(3) + 1); i++) {
        paragraph = [paragraph stringByAppendingString:[SGGen randomSentence]];
    }
    return paragraph;
}
+(double)randomRating
{
    return 1.0 + ((double)arc4random() / UINT32_MAX) * (5.0 - 1.0);
}
+(NSDate *)generateRandomDateWithinDaysBeforeToday:(NSUInteger)days
{
    uint32_t r1 = arc4random_uniform((uint32_t)days);
    NSDate *today = [NSDate new];
    NSCalendar *gregorian =
    [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSDateComponents *offsetComponents = [NSDateComponents new];
    [offsetComponents setDay:(r1*-1)];
    
    NSDate *rndDate1 = [gregorian dateByAddingComponents:offsetComponents
                                                  toDate:today options:0];
    
    return rndDate1;
}

@end
