//
//  SGAppDelegate.m
//  SGReviewTableView
//
//  Created by goodmase on 01/30/2017.
//  Copyright (c) 2017 goodmase. All rights reserved.
//

#import "SGAppDelegate.h"
#import "SGViewController.h"
#import "SGGen.h"

@import SGReviewTableView;

@implementation SGAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //SGReview *aReview = [[SGReview alloc] initWithRating:4.5 content:@"Great experience!" andDate:[NSDate new]];
    NSMutableArray *temp = [NSMutableArray new];
    NSDate *d = [NSDate new];
    for (int i = 0; i < 20; i++) {
        d = [SGGen generateRandomDateWithinDaysBeforeToday:365];
        [temp addObject:[[SGReview alloc] initWithRating:5.0 content:[SGGen randomParagraph] andDate:d]];
    }
    for (int i = 0; i < 10; i++) {
        d = [SGGen generateRandomDateWithinDaysBeforeToday:365];
        [temp addObject:[[SGReview alloc] initWithRating:4.5 content:[SGGen randomParagraph] andDate:d]];
    }
    for (int i = 0; i < 10; i++) {
        d = [SGGen generateRandomDateWithinDaysBeforeToday:365];
        [temp addObject:[[SGReview alloc] initWithRating:4.0 content:[SGGen randomParagraph] andDate:d]];
    }
    for (int i = 0; i < 10; i++) {
        d = [SGGen generateRandomDateWithinDaysBeforeToday:365];
        [temp addObject:[[SGReview alloc] initWithRating:4.5 content:[SGGen randomParagraph] andDate:d]];
    }
    for (int i = 0; i < 10; i++) {
        d = [SGGen generateRandomDateWithinDaysBeforeToday:365];
        [temp addObject:[[SGReview alloc] initWithRating:3.0 content:[SGGen randomParagraph] andDate:d]];
    }
    for (int i = 0; i < 5; i++) {
        d = [SGGen generateRandomDateWithinDaysBeforeToday:365];
        [temp addObject:[[SGReview alloc] initWithRating:2.0 content:[SGGen randomParagraph] andDate:d]];
    }
    for (int i = 0; i < 3; i++) {
        d = [SGGen generateRandomDateWithinDaysBeforeToday:365];
        [temp addObject:[[SGReview alloc] initWithRating:1.0 content:[SGGen randomParagraph] andDate:d]];
    }
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"date" ascending:NO];
    SGViewController *reviewVC = [[SGViewController alloc] initWithReviews:[temp sortedArrayUsingDescriptors:@[sortDescriptor]]];
    reviewVC.graphBarColor = [UIColor redColor];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:reviewVC];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
