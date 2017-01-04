//
//  PushViewController.m
//  BuckDemo
//
//  Created by 樊帅飞 on 2017/1/2.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "PushViewController.h"

@interface PushViewController ()

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor orangeColor];
    UIButton *popBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    popBtn.center = self.view.center;
    [popBtn setTitle:@"Pop" forState:UIControlStateNormal];
    [popBtn addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
    popBtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:popBtn];
}

- (void)pop {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
