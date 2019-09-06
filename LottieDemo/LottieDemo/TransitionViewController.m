//
//  TransitionViewController.m
//  LottieDemo
//
//  Created by 张波 on 2019/9/6.
//  Copyright © 2019 张波. All rights reserved.
//

#import "TransitionViewController.h"

@interface TransitionViewController ()

@end

@implementation TransitionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)itemClose:(UIButton *)item
{
	[self dismissViewControllerAnimated:YES completion:nil];
}

@end
