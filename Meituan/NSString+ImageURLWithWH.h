//
//  NSString+ImageURLWithWH.h
//  Meituan
//
//  Created by 臧其龙 on 15/9/18.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (ImageURLWithWH)

- (NSString *)replaceWHWithWidth:(NSInteger)width AndHeight:(NSInteger)height;

@end
