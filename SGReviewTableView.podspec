#
# Be sure to run `pod lib lint SGReviewTableView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SGReviewTableView'
  s.version          = '0.2.0'
  s.summary          = 'A basic table view controller for showing reviews.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SGReviewTableView is a pod that provides a table view for displaying user reviews. The view includes a header that shows a histogram of the ratings, average rating, and the number of reviews.
                       DESC

  s.homepage         = 'https://github.com/goodmase/SGReviewTableView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'goodmase' => 'stephen.goodman@gmail.com' }
  s.source           = { :git => 'https://github.com/goodmase/SGReviewTableView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SGReviewTableView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SGReviewTableView' => ['SGReviewTableView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'RateView', '~> 1.2'
end
