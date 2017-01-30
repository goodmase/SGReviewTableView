//
//  SGViewController.m
//  SGReviewTableView
//
//  Created by Stephen Goodman on 1/30/17.
//  Copyright © 2017 goodmase. All rights reserved.
//

#import "SGViewController.h"

@interface SGViewController ()

@end

@implementation SGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Reviews";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)prefersStatusBarHidden
{
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
