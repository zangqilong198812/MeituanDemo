//
//  VerticalButtonCollectionViewCell.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/17.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "VerticalButtonCollectionViewCell.h"
#import "UIButton+VerticalLayout.h"


@implementation VerticalButtonCollectionViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    [_verticalButton setVerticalLayoutWithSpace:6];
}

@end
