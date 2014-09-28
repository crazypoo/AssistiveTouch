//
//  TestViewController.m
//  AssistiveTouch
//
//  Created by crazypoo on 14/9/28.
//  Copyright (c) 2014年 crazypoo. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    
//    UIButton *leftMenu =[UIButton buttonWithType:UIButtonTypeCustom];
//    leftMenu.frame = CGRectMake(0, 8, 30, 30);
//    [leftMenu setImage:[UIImage imageNamed:@"me"] forState:UIControlStateNormal];
//    [leftMenu setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [leftMenu addTarget:self action:@selector(backapp:) forControlEvents:UIControlEventTouchUpInside];
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftMenu];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)viewDidDisappear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"bujianle" object:nil];
}
@end
