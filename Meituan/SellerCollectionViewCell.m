//
//  SellerCollectionViewCell.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/16.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "SellerCollectionViewCell.h"
#import "Seller.h"
#import "UIImageView+WebCache.h"

@interface SellerCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *sellerIconImageView;
@property (weak, nonatomic) IBOutlet UILabel *sellerNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerContentLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *selledCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerDistanceLabel;

@end

@implementation SellerCollectionViewCell

- (void)cellBindDataWithSeller:(Seller *)seller
{
    [_sellerIconImageView sd_setImageWithURL:seller.squareimgurl];
    _sellerNameLabel.text = seller.mname;
    _sellerContentLabel.text = seller.title;
    _sellerPriceLabel.text = [NSString stringWithFormat:@"%ld",[seller.price integerValue]];
    _sellerValueLabel.text = [NSString stringWithFormat:@"%ld",[seller.value integerValue]];
    
}

@end
