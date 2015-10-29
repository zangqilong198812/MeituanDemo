//
//  PanicBuying.h
//  Meituan
//
//  Created by 臧其龙 on 15/9/21.
//  Copyright © 2015年 臧其龙. All rights reserved.
//

#import "MTLModel.h"
#import "MTLJSONAdapter.h"


@interface PanicBuying : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *mdcLogoUrl;
@property (nonatomic, strong) NSNumber *price;
@property (nonatomic, strong) NSNumber *campaignprice;

@end
