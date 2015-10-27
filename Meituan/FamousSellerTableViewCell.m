//
//  FamousSellerTableViewCell.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/17.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "FamousSellerTableViewCell.h"
#import "PanicBuying.h"
#import "UIImageView+WebCache.h"
#import "NSURL+MeituanImageURL.h"


@interface FamousSellerTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *leftSellerLogoImageView;
@property (weak, nonatomic) IBOutlet UILabel *leftSellerPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *leftSelllerValueLabel;

@property (weak, nonatomic) IBOutlet UIImageView *centerSellerLogoImageView;
@property (weak, nonatomic) IBOutlet UILabel *centerSellerPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *centerSellerValueLabel;

@property (weak, nonatomic) IBOutlet UIImageView *rightSellerLogoImageView;
@property (weak, nonatomic) IBOutlet UILabel *rightSellerPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightSellerValueLabel;

@end


@implementation FamousSellerTableViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)bindDataWithPanicBuying:(NSArray *)panicModelArray
{
    for (int i = 0; i < 3; i++) {
        if (i < panicModelArray.count) {
            PanicBuying *panic = panicModelArray[i];
            if (i == 0) {
                [_leftSellerLogoImageView sd_setImageWithURL:[NSURL URLWithString:panic.mdcLogoUrl]];
                _leftSellerPriceLabel.text =
                    [NSString stringWithFormat:@"%ld", (long)[panic.campaignprice integerValue]];
                _leftSelllerValueLabel.text = [NSString stringWithFormat:@"%ld", (long)[panic.price integerValue]];
            }

            if (i == 1) {
                [_centerSellerLogoImageView sd_setImageWithURL:[NSURL URLWithString:panic.mdcLogoUrl]];
                _centerSellerPriceLabel.text =
                    [NSString stringWithFormat:@"%ld", (long)[panic.campaignprice integerValue]];
                _centerSellerValueLabel.text = [NSString stringWithFormat:@"%ld", (long)[panic.price integerValue]];
            }

            if (i == 2) {
                [_rightSellerLogoImageView sd_setImageWithURL:[NSURL URLWithString:panic.mdcLogoUrl]];
                _rightSellerPriceLabel.text =
                    [NSString stringWithFormat:@"%ld", (long)[panic.campaignprice integerValue]];
                _rightSellerValueLabel.text = [NSString stringWithFormat:@"%ld", (long)[panic.price integerValue]];
            }
        }
    }
}

@end
