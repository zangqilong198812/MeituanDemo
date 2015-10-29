//
//  NSString+ImageURLWithWH.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/18.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "NSString+ImageURLWithWH.h"
#import <CoreGraphics/CoreGraphics.h>


@implementation NSString (ImageURLWithWH)

- (NSString *)replaceWHWithWidth:(NSInteger)width AndHeight:(NSInteger)height
{
    NSString *widthWithHeight = [NSString stringWithFormat:@"%ld.%ld", (long)width, (long)height];
    NSRange whRange = [self rangeOfString:@"w.h"];
    if (whRange.location != NSNotFound) {
        NSString *replacedString = [self stringByReplacingCharactersInRange:whRange withString:widthWithHeight];
        return replacedString;
    }
    return nil;
}

@end
