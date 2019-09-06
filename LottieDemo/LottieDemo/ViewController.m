//
//  ViewController.m
//  LottieDemo
//
//  Created by 张波 on 2019/9/6.
//  Copyright © 2019 张波. All rights reserved.
//

#import "ViewController.h"
#import "TransitionViewController.h"

@interface ViewController ()
<
	UIViewControllerTransitioningDelegate
>

@property (strong, nonatomic) LOTAnimationView *animation;

@end

@implementation ViewController

#pragma mark - Life Cycle
- (void)viewDidLoad
{
	[super viewDidLoad];
	self.view.backgroundColor = [UIColor yellowColor];
	LOTAnimationView *animation = [LOTAnimationView animationNamed:@"Watermelon"];
	animation.bounds = CGRectMake(0, 0, 200, 200);
	animation.center = self.view.center;
	animation.loopAnimation = YES;
//	animation.autoReverseAnimation = YES;
	[self.view addSubview:animation];
	self.animation = animation;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
	[self.animation playWithCompletion:^(BOOL animationFinished) {

	}];
	
//	TransitionViewController *controller = [TransitionViewController new];
//	controller.transitioningDelegate = self;
//	[self presentViewController:controller animated:YES completion:nil];
}

- (void)heart
{
	LOTAnimatedSwitch *heartIcon = [LOTAnimatedSwitch switchNamed:@"TwitterHeart"];
	heartIcon.bounds = CGRectMake(0, 0, 200, 200);
	heartIcon.center = self.view.center;
	[self.view addSubview:heartIcon];
}

#pragma mark - UIViewControllerTransitioningDelegate
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
	LOTAnimationTransitionController *animationController = [[LOTAnimationTransitionController alloc] initWithAnimationNamed:@"vcTransition1" fromLayerNamed:@"outLayer" toLayerNamed:@"inLayer" applyAnimationTransform:NO];
	return animationController;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
	LOTAnimationTransitionController *animationController = [[LOTAnimationTransitionController alloc] initWithAnimationNamed:@"vcTransition2" fromLayerNamed:@"outLayer" toLayerNamed:@"inLayer" applyAnimationTransform:NO];
	return animationController;
}

@end
