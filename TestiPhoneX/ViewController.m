//
//  ViewController.m
//  TestiPhoneX
//
//  Created by 谢艺欣 on 2017/9/14.
//  Copyright © 2017年 谢艺欣. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"Root Page";
    
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    self.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeAlways;
    
    self.view.backgroundColor = [UIColor redColor];
    
    NSLog(@"frame => %@",NSStringFromCGRect(self.view.bounds));
    NSLog(@"safe insets => %@",NSStringFromUIEdgeInsets(self.view.safeAreaInsets));
    
    [self setupViews];
}

- (void) setupViews {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 140, 100, 100)];
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 145, 100, 100)];
    [button addTarget:self action:@selector(onClickNextPageButton:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor yellowColor];
    [button setTitle:@"Next Page" forState:UIControlStateNormal];
    [self.view addSubview:button];
}

- (void)onClickNextPageButton:(UIButton *)button {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor yellowColor];
    vc.title = @"Next Page more than one line";
    [self.navigationController pushViewController:vc animated:true];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
