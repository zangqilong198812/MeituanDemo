//
//  SellerViewController.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/15.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "SellerViewController.h"
#import <MJRefresh.h>


@interface SellerViewController () {
    NSMutableArray *pullAnimationImages;
    NSMutableArray *shakeAnimationImages;
}

@end


@implementation SellerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UITabBarItem *item = self.tabBarController.tabBar.items[2];
    [item setSelectedImage:[UIImage imageNamed:@"icon_tabbar_merchant_selected"]];

    [self shouldAddPullToRefresh:YES];
    // Do any additional setup after loading the view.
}

- (void)loadNewData {}

- (void)didReceiveMemoryWarning
{
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

@end
