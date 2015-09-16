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

static NSString * const kSellerTableViewCellID = @"kSellerTableViewCellID";

@interface GroupPurchaseViewController ()<UITableViewDataSource, UITableViewDelegate>
{
    NSArray *sellerArray;
}

@end

@implementation GroupPurchaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithHex:@"#06C1AE"]];
    
    self.shouldInitPullToRefresh = YES;
    [Seller requestSellerWithCompletion:^(id object) {
        sellerArray = (NSArray *)object;
        [self.tableView reloadData];
    }];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView DataSource && Delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return sellerArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SellerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kSellerTableViewCellID];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    Seller *seller = sellerArray[indexPath.row];
    
    [cell bindDataWithSeller:seller];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 75.0f;
}
@end
