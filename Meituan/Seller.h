//
//  Seller.h
//  Meituan
//
//  Created by 臧其龙 on 15/9/16.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "MTLModel.h"
#import "MTLJSONAdapter.h"


@interface Seller : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy, readonly) NSString *mname;
@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *range;
@property (nonatomic, strong, readonly) NSNumber *price;
@property (nonatomic, strong, readonly) NSNumber *value;
@property (nonatomic, strong, readonly) NSNumber *nobooking;
@property (nonatomic, strong, readonly) NSNumber *solds;
@property (nonatomic, copy, readonly) NSString *squareimgurl;

@end
