//
//  PanicBuying+request.h
//  Meituan
//
//  Created by 臧其龙 on 15/9/21.
//  Copyright © 2015年 臧其龙. All rights reserved.
//

#import "PanicBuying.h"


@interface PanicBuying (request)

+ (void)requestPanicBuyingWithCompletion:(requestFinishedCompletionBlock)successBlock
                             FailedBlock:(requestFailedBlock)failedBlock;

@end
