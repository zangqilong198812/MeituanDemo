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

/*
 
 @property (nonatomic, copy, readonly) NSString *title;
 @property (nonatomic, copy, readonly) NSString *range;
 @property (nonatomic, assign, readonly) NSNumber *price;
 @property (nonatomic, assign, readonly) NSNumber *value;
 @property (nonatomic, strong, readonly) NSNumber *noBooking;
 @property (nonatomic, strong, readonly) NSNumber *solds;
 @property (nonatomic, strong, readonly) NSURL *squareimgurl;
 */

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"mname":@"mname",
             @"title":@"title",
             @"range":@"range",
             @"price":@"price",
             @"value":@"value",
             @"noBooking":@"noBooking",
             @"solds":@"solds",
             @"squareimgurl":@"squareimgurl",
             };
}

+ (NSValueTransformer *)noBookingJSONTransformer{
    
    return [NSValueTransformer mtl_valueMappingTransformerWithDictionary:@{
                                                                           @"1": @(YES),
                                                                           @"0": @(NO)
                                                                           }];
}

+ (NSValueTransformer *)squareimgurlJSONTransformer{
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

@end
