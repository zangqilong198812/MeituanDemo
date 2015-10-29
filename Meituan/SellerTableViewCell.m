//
//  SellerTableViewCell.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/16.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "SellerTableViewCell.h"
#import "UIImageView+WebCache.h"
#import "NSURL+MeituanImageURL.h"
#import "UIView+CornerMaskLayer.h"
#import "UIView+AddHorizontalLine.h"


@interface SellerTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *sellerIconImageView;
@property (weak, nonatomic) IBOutlet UILabel *sellerNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerDistanceLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerContentLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerSoldsLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerValueLabel;

@end


@implementation SellerTableViewCell

- (void)awakeFromNib
{
    [_sellerIconImageView addCornerMaskLayerWithRadius:3];
    [_sellerValueLabel addHorizontalLineWithColor:_sellerValueLabel.textColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated { [super setSelected:selected animated:animated]; }

- (void)bindDataWithSeller:(Seller *)seller
{
    [_sellerIconImageView sd_setImageWithURL:[NSURL urlWithString:seller.squareimgurl AndImageSize:CGSizeMake(80, 80)]];
    _sellerNameLabel.text = seller.mname;
    _sellerContentLabel.text = seller.title;
    _sellerPriceLabel.text = [NSString stringWithFormat:@"%.1f", [seller.price floatValue]];
    _sellerValueLabel.text = [NSString stringWithFormat:@"%.1f", [seller.value floatValue]];
    _sellerSoldsLabel.text = [NSString stringWithFormat:@"已售%ld", [seller.solds integerValue]];
}

@end
