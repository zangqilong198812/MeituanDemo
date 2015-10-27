//
//  MoreViewController.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/15.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "MoreViewController.h"


@interface MoreViewController ()

@end


@implementation MoreViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UITabBarItem *item = self.tabBarController.tabBar.items[4];
    [item setSelectedImage:[UIImage imageNamed:@"icon_tabbar_misc_selected"]];
}

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
