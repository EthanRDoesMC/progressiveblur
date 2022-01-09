//
//  _UIProgressiveBlurContextController.h
//  progressiveblur
//  thanks for the header site krit
//  Created by Ethan Chaffin on 1/8/22.
//

@import Foundation;
@import UIKit;

@interface _UIProgressiveBlurContextController : UIViewController <UIViewControllerTransitioningDelegate>
@property (nonatomic) NSInteger blurStyle; // haven't researched this, intriguing
-(id)animationControllerForDismissedController:(id)dismissed;
-(id)animationControllerForPresentedController:(id)presented presentingController:(id)presenting sourceController:(id)source;
-(id)presentationControllerForPresentedViewController:(id)presented presentingViewController:(id)presenting sourceViewController:(id)source;
@end
