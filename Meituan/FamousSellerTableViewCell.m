//
//  FamousSellerTableViewCell.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/17.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "FamousSellerTableViewCell.h"

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

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)bindDataWithFamous
{
    
}

@end
