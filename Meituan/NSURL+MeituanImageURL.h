//
//  NSURL+MeituanImageURL.h
//  Meituan
//
//  Created by 臧其龙 on 15/9/18.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSURL (MeituanImageURL)

+ (NSURL *)urlWithString:(NSString *)urlPath AndImageSize:(CGSize)size;

@end
