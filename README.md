# SGReviewTableView

[![CI Status](http://img.shields.io/travis/goodmase/SGReviewTableView.svg?style=flat)](https://travis-ci.org/goodmase/SGReviewTableView)
[![Version](https://img.shields.io/cocoapods/v/SGReviewTableView.svg?style=flat)](http://cocoapods.org/pods/SGReviewTableView)
[![License](https://img.shields.io/cocoapods/l/SGReviewTableView.svg?style=flat)](http://cocoapods.org/pods/SGReviewTableView)
[![Platform](https://img.shields.io/cocoapods/p/SGReviewTableView.svg?style=flat)](http://cocoapods.org/pods/SGReviewTableView)

![Alt text](sgreviewtableview.gif?raw=true "SGReviewTableView Example")

## Example Project

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

SGReviewTableView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SGReviewTableView"
```

## Documentation
http://cocoadocs.org/docsets/SGReviewTableView/ 

## Usage
### Basic Example
#### Objective-C
```Objective-C
@import SGReviewTableView;
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //create a review
    SGReview *review = [[SGReview alloc] initWithRating:5.0 content:@"Excellent!" andDate:[NSDate new]];
 
    SGReviewTableViewController *reviewTableView = [[SGReviewTableViewController alloc] initWithReviews:@[review]];
    reviewTableView.graphBarColor = [UIColor redColor];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:reviewTableView];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
```

#### Swift
```Swift
import UIKit
import SGReviewTableView

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let r = SGReview(rating:4.5, content:"Awesome!", andDate:Date())
        let reviewTableView = SGReviewTableViewController(reviews: [r!])
        reviewTableView?.graphBarColor = UIColor.red;
        let nav = UINavigationController(rootViewController: reviewTableView!)
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = nav
        self.window?.makeKeyAndVisible()
        
        return true
    }
}
```

### SGReview
The SGReviewTableViewController accepts an array of SGReview objects. Currently only ratings of 0.0-5.0 are valid ratings.
#### Objective-C
```Objective-C
SGReview *review = [[SGReview alloc] initWithRating:5.0 content:@"Excellent!" andDate:[NSDate new]];
```
#### Swift
```Swift
let review = SGReview(rating:4.5, content:"Awesome!", andDate:Date())
```
### Customization 
Currently customization is limited. The following properties can be customized on SGReviewTableViewController:
* graphBarColor - customize the color of the histogram bars at the top of the table view.

## Author

Stephen Goodman, stephen.goodman@gmail.com

## License

SGReviewTableView is available under the MIT license. See the LICENSE file for more info.
