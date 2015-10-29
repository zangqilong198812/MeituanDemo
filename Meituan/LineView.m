//
//  LineView.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/17.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "LineView.h"
#import "UIColor+HexColor.h"

static NSString *const kLineHexColor = @"#D7D7D7";


@implementation LineView

- (void)addLineWithLineType:(LineViewType)type
{
    if (type & LineViewTypeTop) {
        CALayer *layer = [CALayer layer];
        layer.backgroundColor = [UIColor colorWithHex:kLineHexColor].CGColor;
        layer.frame = CGRectMake(0, 0, CGRectGetWidth(self.bounds), .5);
        [self.layer addSublayer:layer];
    }

    if (type & LineViewTypeLeft) {
        CALayer *layer = [CALayer layer];
        layer.backgroundColor = [UIColor colorWithHex:kLineHexColor].CGColor;
        layer.frame = CGRectMake(0, 0, .5, CGRectGetHeight(self.bounds));
        [self.layer addSublayer:layer];
    }

    if (type & LineViewTypeBottom) {
        CALayer *layer = [CALayer layer];
        layer.backgroundColor = [UIColor colorWithHex:kLineHexColor].CGColor;
        layer.frame = CGRectMake(0, CGRectGetHeight(self.bounds), CGRectGetWidth(self.bounds), .5);
        [self.layer addSublayer:layer];
    }

    if (type & LineViewTypeRight) {
        CALayer *layer = [CALayer layer];
        layer.backgroundColor = [UIColor colorWithHex:kLineHexColor].CGColor;
        layer.frame = CGRectMake(CGRectGetWidth(self.bounds), 0, .5, CGRectGetHeight(self.bounds));
        [self.layer addSublayer:layer];
    }
}
@end
