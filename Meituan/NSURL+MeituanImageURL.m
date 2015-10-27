//
//  NSURL+MeituanImageURL.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/18.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "NSURL+MeituanImageURL.h"
#import "NSString+ImageURLWithWH.h"


@implementation NSURL (MeituanImageURL)

+ (NSURL *)urlWithString:(NSString *)urlPath AndImageSize:(CGSize)size
{
    NSURL *url = [NSURL URLWithString:[urlPath replaceWHWithWidth:size.width AndHeight:size.height]];
    return url;
}

@end
