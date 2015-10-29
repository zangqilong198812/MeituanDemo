//
//  BaseCollectionViewController.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/15.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "BaseCollectionViewController.h"
#import <MJRefresh.h>


@interface BaseCollectionViewController () {
    NSMutableArray *pullAnimationImages;
    NSMutableArray *shakeAnimationImages;
}
@end


@implementation BaseCollectionViewController

static NSString *const reuseIdentifier = @"Cell";

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
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];

    // Do any additional setup after loading the view.
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
        self.collectionView.header = header;
    } else {
        self.collectionView.header = nil;
    }
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
#warning Incomplete method implementation -- Return the number of sections
    return 0;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
#warning Incomplete method implementation -- Return the number of items in the section
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell =
        [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];

    // Configure the cell

    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions
performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath
*)indexPath withSender:(id)sender {
    return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath
*)indexPath withSender:(id)sender {

}
*/

@end
