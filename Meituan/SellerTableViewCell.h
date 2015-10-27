//
//  SellerTableViewCell.h
//  Meituan
//
//  Created by 臧其龙 on 15/9/16.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Seller.h"
#import "MCSwipeTableViewCell.h"


@interface SellerTableViewCell : MCSwipeTableViewCell

- (void)bindDataWithSeller:(Seller *)seller;

@end
