//
//  UIView+CornerMaskLayer.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/18.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "UIView+CornerMaskLayer.h"


@implementation UIView (CornerMaskLayer)

- (void)addCornerMaskLayerWithRadius:(CGFloat)radius
{
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                       byRoundingCorners:UIRectCornerAllCorners
                                             cornerRadii:CGSizeMake(radius, radius)]
                     .CGPath;
    self.layer.mask = layer;
}

@end
