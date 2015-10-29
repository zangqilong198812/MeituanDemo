//
//  BaseTableViewController.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/15.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "BaseTableViewController.h"
#import <MJRefresh.h>


@interface BaseTableViewController () {
    NSMutableArray *pullAnimationImages;
    NSMutableArray *shakeAnimationImages;
}

@end


@implementation BaseTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    pullAnimationImages = [NSMutableArray array];
    shakeAnimationImages = [NSMutableArray array];

    NSArray *pullAnimationName = @[
        @"icon_pull_animation_1",
        @"icon_pull_animation_2",
        @"icon_pull_animation_3",
        @"icon_pull_animation_4",
        @"icon_pull_animation_5"
    ];
    NSArray *shakeAnimationName = @[
        @"icon_shake_animation_1",
        @"icon_shake_animation_2",
        @"icon_shake_animation_3",
        @"icon_shake_animation_4",
        @"icon_shake_animation_5",
        @"icon_shake_animation_6",
        @"icon_shake_animation_7",
        @"icon_shake_animation_8"
    ];
    for (NSString *str in pullAnimationName) {
        UIImage *image = [UIImage imageNamed:str];
        [pullAnimationImages addObject:image];
    }

    for (NSString *str in shakeAnimationName) {
        UIImage *image = [UIImage imageNamed:str];
        [shakeAnimationImages addObject:image];
    }

    [self shouldAddPullToRefresh:_shouldInitPullToRefresh];
}

- (void)shouldAddPullToRefresh:(BOOL)isAdd
{
    if (isAdd) {
        MJRefreshGifHeader *header =
            [MJRefreshGifHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewData)];
        // 设置普通状态的动画图片
        [header setImages:@[ [UIImage imageNamed:@"icon_transform_animation"] ] forState:MJRefreshStateIdle];
        // 设置即将刷新状态的动画图片（一松开就会刷新的状态）
        [header setImages:pullAnimationImages forState:MJRefreshStatePulling];
        // 设置正在刷新状态的动画图片
        [header setImages:shakeAnimationImages forState:MJRefreshStateRefreshing];

        header.lastUpdatedTimeLabel.hidden = YES;
        header.stateLabel.hidden = YES;
        // 设置header
        self.tableView.header = header;
    } else {
        self.tableView.header = nil;
    }
}

- (void)loadNewData {}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];

    // Configure the cell...

    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath
*)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
