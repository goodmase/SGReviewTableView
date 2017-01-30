# SGReviewTableView

[![CI Status](http://img.shields.io/travis/goodmase/SGReviewTableView.svg?style=flat)](https://travis-ci.org/goodmase/SGReviewTableView)
[![Version](https://img.shields.io/cocoapods/v/SGReviewTableView.svg?style=flat)](http://cocoapods.org/pods/SGReviewTableView)
[![License](https://img.shields.io/cocoapods/l/SGReviewTableView.svg?style=flat)](http://cocoapods.org/pods/SGReviewTableView)
[![Platform](https://img.shields.io/cocoapods/p/SGReviewTableView.svg?style=flat)](http://cocoapods.org/pods/SGReviewTableView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

SGReviewTableView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:



```ruby
pod "SGReviewTableView"
```

## Usage
### Basic Example
```Objective-C
@import SGReviewTableView;
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //create a review
    SGReview *review = [[SGReview alloc] initWithRating:5.0 content:@"Excellent!" andDate:[NSDate new]];
 
    SGReviewTableViewController *reviewTableView = [[SGReviewTableViewController alloc] initWithReviews:@[review]];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:reviewTableView];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
```
### SGReview
The SGReviewTableViewController accepts an array of SGReview objects. Currently only ratings of 0.0-5.0 are valid ratings.
```Objective-C
SGReview *review = [[SGReview alloc] initWithRating:5.0 content:@"Excellent!" andDate:[NSDate new]];
```
### Customization 
Currently customization is limited. The following properties can be customized on SGReviewTableViewController:
* graphBarColor - customize the color of the histogram bars at the top of the table view.

## Author

Stephen Goodman, stephen.goodman@gmail.com

## License

SGReviewTableView is available under the MIT license. See the LICENSE file for more info.
