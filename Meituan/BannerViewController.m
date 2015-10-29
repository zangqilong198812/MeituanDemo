//
//  BannerViewController.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/17.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "BannerViewController.h"
#import "VerticalButtonCollectionViewCell.h"

static NSString *const kVerticalButtonCellID = @"kVerticalButtonCellID";


@interface BannerViewController () <UICollectionViewDataSource, UICollectionViewDelegate,
                                    UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *bannerCollectionView;

@end


@implementation BannerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - CollectionView DataSource && Delegate

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    VerticalButtonCollectionViewCell *cell =
        [collectionView dequeueReusableCellWithReuseIdentifier:kVerticalButtonCellID forIndexPath:indexPath];

    [cell.verticalButton setTitle:[NSString stringWithFormat:@"%d", indexPath.row] forState:UIControlStateNormal];

    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section { return 16; }

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((CGRectGetWidth(_bannerCollectionView.bounds) - 24) / 4, 67.5);
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
