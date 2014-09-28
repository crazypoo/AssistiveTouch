//
//  AppDelegate.m
//  AssistiveTouch
//
//  Created by crazypoo on 14/9/26.
//  Copyright (c) 2014年 crazypoo. All rights reserved.
//

#import "AppDelegate.h"
#import "UIButton+PCategory.h"
#import "ViewController.h"
#import "TestViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ViewController *mainView = [[ViewController alloc] init];
    mainNav = [[UINavigationController alloc] initWithRootViewController:mainView];
    self.window.rootViewController = mainNav;
    
    likeIOS = [[UIButton alloc] initWithFrame:CGRectMake(5, 100,60, 60)];
    [likeIOS setImage:[UIImage imageNamed:@"me"] forState:UIControlStateNormal];
    likeIOS.tag = 0;
    likeIOS.layer.cornerRadius = 8;
    [likeIOS setDragEnable:YES];
    [likeIOS setAdsorbEnable:YES];
    [self.window.rootViewController.view addSubview:likeIOS];
    [likeIOS addTarget:self action:@selector(showTag:) forControlEvents:UIControlEventTouchUpInside];
    [self.window makeKeyAndVisible];
    
    isTap = NO;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleReload:) name:@"asdkaskdk" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleReload1:) name:@"bujianle" object:nil];

    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void)showTag:(UIButton *)sender
{
    smallView = [[UIView alloc] initWithFrame:self.window.bounds];
    smallView.backgroundColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:0];
    [self.window addSubview:smallView];
    
    CGFloat menuSize = 200;
    
    menuView = [[UIView alloc] initWithFrame:CGRectMake((self.window.frame.size.width-menuSize)/2, (self.window.frame.size.height-menuSize)/2, menuSize, menuSize)];
    menuView.layer.borderWidth = 5;
    menuView.layer.cornerRadius = 20;
    menuView.layer.masksToBounds = YES;
    menuView.backgroundColor = [UIColor blackColor];
    [smallView addSubview:menuView];
    
    CGFloat width = menuSize/3;
    CGFloat height = menuSize/3;
    CGFloat space = 0;
    CGFloat startX = 0;
    CGFloat startY = 0;
    
    for (NSInteger index = 0; index < 9; index ++) {
        menuTap = [[UIButton alloc] initWithFrame:CGRectMake(startX + (width + space) * (index % 3), startY + (width + space) * (index / 3), width, height)];
        [menuTap addTarget:self action:@selector(tapppppp:) forControlEvents:UIControlEventTouchUpInside];
        menuTap.tag = index;
        if (menuTap.tag == 1) {
            [menuTap setImage:[UIImage imageNamed:@"me"] forState:UIControlStateNormal];
        }
        else if (menuTap.tag == 3)
        {
            [menuTap setImage:[UIImage imageNamed:@"me"] forState:UIControlStateNormal];
        }
        [menuView addSubview:menuTap];
    }
    
    
    
    likeIOS.hidden = YES;
}

-(void)tapppppp:(UIButton *)sender
{
    if (sender.tag == 1) {
        if (!isTap)
        {
            TestViewController *lalalal = [[TestViewController alloc] init];
            lalalal.view.backgroundColor = [UIColor greenColor];
            [mainNav pushViewController:lalalal animated:YES];
            
            smallView.hidden = YES;
            likeIOS.hidden = NO;
            
            [[NSNotificationCenter defaultCenter] postNotificationName:@"asdkaskdk" object:nil];
        }
        else
        {
            NSLog(@"已经点咗了");
        }
    }
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [super touchesBegan:touches withEvent:event];
    smallView.hidden = YES;
    likeIOS.hidden = NO;
}

-(void)handleReload:(NSNotification*)notification
{
    NSLog(@"asd");
    isTap = YES;
}
-(void)handleReload1:(NSNotification*)notification
{
    isTap = NO;
}
@end
