//
//  SellerTableViewCell.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/16.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "SellerTableViewCell.h"
#import "UIImageView+WebCache.h"


@interface SellerTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *sellerIconImageView;
@property (weak, nonatomic) IBOutlet UILabel *sellerNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerDistanceLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerContentLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerSoldsLabel;

@end

@implementation SellerTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)bindDataWithSeller:(Seller *)seller
{
    [_sellerIconImageView sd_setImageWithURL:seller.squareimgurl];
    _sellerNameLabel.text = seller.mname;
    _sellerContentLabel.text = seller.title;
    //    _sellerPriceLabel.text = [NSString stringWithFormat:@"%ld",[seller.price integerValue]];
    //    _sellerValueLabel.text = [NSString stringWithFormat:@"%ld",[seller.value integerValue]];
    
}

@end
