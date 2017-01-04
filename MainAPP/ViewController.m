//
//  ViewController.m
//  BuckDemo
//
//  Created by 樊帅飞 on 2017/1/2.
//  Copyright © 2017年 baidu. All rights reserved.
//

#import "ViewController.h"
#import "PushVC/PushViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *pushBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    pushBtn.center = self.view.center;
    pushBtn.backgroundColor =[UIColor redColor];
    [pushBtn setTitle:@"Push" forState:UIControlStateNormal];
    [pushBtn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
}

- (void)push {
    PushViewController *pushVC = [[PushViewController alloc] init];
    [self.navigationController pushViewController:pushVC animated:YES];
}

@end
