//
//  MeituanActivity.h
//  Meituan
//
//  Created by 臧其龙 on 15/9/18.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "MTLModel.h"
#import "MTLJSONAdapter.h"


@interface MeituanActivity : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy, readonly) NSString *imageurl;
@property (nonatomic, copy, readonly) NSString *maintitle;
@property (nonatomic, copy, readonly) NSString *deputytitle;
@property (nonatomic, copy, readonly) NSString *tplurl;

@end
