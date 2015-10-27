//
//  LineView.h
//  Meituan
//
//  Created by 臧其龙 on 15/9/17.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, LineViewType) {
    LineViewTypeNone = 0,
    LineViewTypeTop = 1,
    LineViewTypeLeft = 1 << 1,
    LineViewTypeBottom = 1 << 2,
    LineViewTypeRight = 1 << 3
};


@interface LineView : UIView

- (void)addLineWithLineType:(LineViewType)type;

@end
