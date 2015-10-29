//
//  Seller.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/16.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "Seller.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"


@implementation Seller

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
        @"mname" : @"mname",
        @"title" : @"title",
        @"range" : @"range",
        @"price" : @"price",
        @"value" : @"value",
        @"nobooking" : @"nobooking",
        @"solds" : @"solds",
        @"squareimgurl" : @"squareimgurl",
    };
}

+ (NSValueTransformer *)nobookingJSONTransformer
{
    return [NSValueTransformer mtl_valueMappingTransformerWithDictionary:@{ @(1) : @(YES), @(0) : @(NO) }];
}


@end
