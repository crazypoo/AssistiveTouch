//
//  ViewController.m
//  AssistiveTouch
//
//  Created by crazypoo on 14/9/26.
//  Copyright (c) 2014年 crazypoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(5, 100,60, 60)];
    btn.backgroundColor = [UIColor blueColor];
    btn.tag = 0;
    btn.layer.cornerRadius = 8;
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(pushView:) forControlEvents:UIControlEventTouchUpInside];
    self.view.backgroundColor = [UIColor grayColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pushView:(id)sender
{
    UIViewController *lalalaalal = [[UIViewController alloc] init];
    lalalaalal.view.backgroundColor = [UIColor redColor];
    [self.navigationController pushViewController:lalalaalal animated:YES];
}

@end
