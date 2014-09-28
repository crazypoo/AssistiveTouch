//
//  AppDelegate.h
//  AssistiveTouch
//
//  Created by crazypoo on 14/9/26.
//  Copyright (c) 2014年 crazypoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIView *smallView;
    UIButton *likeIOS;
    UINavigationController *mainNav;
    UIButton *menuBtn;
    UIView *menuView;
    BOOL isTap;
    UIButton *menuTap;
}

@property (strong, nonatomic) UIWindow *window;


@end

