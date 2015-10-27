//
//  BaseTableViewController.h
//  Meituan
//
//  Created by 臧其龙 on 15/9/15.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BaseTableViewController : UITableViewController

@property (nonatomic, assign) BOOL shouldInitPullToRefresh;

- (void)shouldAddPullToRefresh:(BOOL)isAdd;

@end
