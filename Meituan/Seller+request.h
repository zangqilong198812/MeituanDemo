//
//  Seller+request.h
//  Meituan
//
//  Created by 臧其龙 on 15/9/16.
//  Copyright (c) 2015年 臧其龙. All rights reserved.
//

#import "Seller.h"
#import "AFNetworking.h"


@interface Seller (request)

+ (AFHTTPRequestOperation *)requestSellerWithCompletion:(requestFinishedCompletionBlock)successBlock
                                            FailedBlock:(requestFailedBlock)failedBlock;

@end
