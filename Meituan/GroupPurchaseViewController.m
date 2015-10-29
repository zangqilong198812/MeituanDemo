//
//  GroupPurchaseViewController.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/15.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "GroupPurchaseViewController.h"
#import "UIColor+HexColor.h"
#import "Seller+request.h"
#import "SellerTableViewCell.h"
#import "LineView.h"
#import <AFNetworking.h>
#import "PanicBuying+request.h"
#import "FamousSellerTableViewCell.h"

static NSString *const kSellerTableViewCellID = @"kSellerTableViewCellID";
static NSString *const kPanicBuyingTableViewCellID = @"kPanicBuyingTableViewCellID";


@interface GroupPurchaseViewController () <UITableViewDataSource, UITableViewDelegate> {
    NSArray *sellerArray;
    NSArray *panicBuyingArray;

    AFHTTPRequestOperation *operation;
}

@end


@implementation GroupPurchaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    sellerArray = [NSArray new];

    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithHex:@"#06C1AE"]];

    UITabBarItem *item = self.tabBarController.tabBar.items[0];
    [item setSelectedImage:[UIImage imageNamed:@"icon_tabbar_homepage_selected"]];

    [self shouldAddPullToRefresh:YES];

    [Seller requestSellerWithCompletion:^(id object) {
      sellerArray = (NSArray *)object;
      [self.tableView reloadData];
    } FailedBlock:^(NSError *error){

    }];


    //    [PanicBuying requestPanicBuyingWithCompletion:^(id object) {
    //        panicBuyingArray = (NSArray *)object;
    //        [self.tableView reloadData];
    //    } FailedBlock:^(NSError *error) {
    //
    //    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Pull To Refresh

- (void)loadNewData
{
    [Seller requestSellerWithCompletion:^(id object) {
      sellerArray = (NSArray *)object;
      [self.tableView reloadData];
    } FailedBlock:^(NSError *error){

    }];
}

#pragma mark - TableView DataSource && Delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView { return 2; }

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return sellerArray.count;
    } else {
        return 1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        SellerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kSellerTableViewCellID];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        Seller *seller = sellerArray[indexPath.row];

        [cell bindDataWithSeller:seller];

        return cell;
    } else {
        FamousSellerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kPanicBuyingTableViewCellID];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell bindDataWithPanicBuying:panicBuyingArray];
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 100;
    }
    return 110.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section { return 35; }

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    LineView *headerView =
        [[LineView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), 30)];
    [headerView addLineWithLineType:LineViewTypeTop];
    UILabel *likeLabel = [[UILabel alloc] initWithFrame:CGRectMake(12, 0, 100, 35)];
    likeLabel.text = @"猜你喜欢";
    likeLabel.textColor = [UIColor blackColor];
    likeLabel.font = [UIFont boldSystemFontOfSize:14];
    [headerView addSubview:likeLabel];
    return headerView;
}
@end
