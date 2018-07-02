//
//  QQingWindowRootViewController.m
//  QQingCommon
//
//  Created by Ben on 15/10/30.
//  Copyright © 2015年 QQingiOSTeam. All rights reserved.
//

#import "BaseWindowController.h"

@implementation BaseWindowController

+ (BaseWindowController *)createWindowControllerWithStatusBarStyle:(UIStatusBarStyle)statusBarStyle {
    BaseWindowController *rootVC = [[BaseWindowController alloc] init];
    rootVC.statusBarStyleToSet = statusBarStyle;
    return rootVC;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return _statusBarStyleToSet;
}

#pragma mark - 屏幕旋转相关

- (BOOL)shouldAutorotate {
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

@end
