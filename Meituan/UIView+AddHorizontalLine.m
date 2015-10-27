//
//  UIView+AddHorizontalLine.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/18.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "UIView+AddHorizontalLine.h"


@implementation UIView (AddHorizontalLine)

- (void)addHorizontalLineWithColor:(UIColor *)lineColor
{
    CAShapeLayer *line = [CAShapeLayer layer];
    UIBezierPath *linePath = [UIBezierPath bezierPath];
    [linePath moveToPoint:CGPointMake(CGRectGetMinX(self.bounds), CGRectGetMidY(self.bounds))];
    [linePath addLineToPoint:CGPointMake(CGRectGetMaxX(self.bounds), CGRectGetMidY(self.bounds))];
    line.path = linePath.CGPath;
    line.fillColor = nil;
    line.opacity = 1.0;
    line.strokeColor = lineColor.CGColor;
    [self.layer addSublayer:line];
}

@end
