//
//  PanicBuying+request.m
//  Meituan
//
//  Created by 臧其龙 on 15/9/21.
//  Copyright © 2015年 臧其龙. All rights reserved.
//

#import "PanicBuying+request.h"
#import "AFNetworking.h"

static NSString *const kRequestPanicBuyingURL = @"http://api.meituan.com/group/v1/deal/activity/"
    @"10?__skck=c8a86f38931f8d49dbaadc416db7b31e&__skcy=52qy6h%2Bgcj7yZzG2IA%2F4uPSg5dk%3D&__skno=85363B6D-1361-4618-"
    @"A988-907D40E9E928&__skts=1442783788.440790&__skua=6b6a21693e4b937c39ba53d9519b097c&__vhost=api.mobile.meituan."
    @"com&ci=10&client=iphone&latlng=31.276581%2C121.507704&movieBundleVersion=100&msid=489DB101-C558-4D7E-A556-"
    @"DAF9326193A82015-09-21-05-08225&ptId=iphone_5.9.2&utm_campaign=AgroupBgroupFab_homepagewebview0717__a__leftflow_"
    @"__ab_b_food_57_purepoilist_extinfo__a__a___ab_b_selectlist_paidui__a__leftflow___ab_i550poi_ktv__a__a___ab_i_5_"
    @"9_travelpoidetail__b__a___ab_i550poi_xxyl__b__leftflow___ab_mingdiangexinghua0707__h__h___ab_waimaiwending__b__"
    @"d___ab_b_travelsearchhot__b__b___ab_ifoodadvert__a__a___ab_pindaoqugexinghua0708__k__k___ab_itriphotpoi__a__a___"
    @"ab_icreditmall__a__a___ab_i_6_0_webview__c__c___ab_b_travelpoilistrank__b__leftflow___ab_i_group_5_7_search_"
    @"chunpoi__b__b2___ab_i_group_5_8_spdy__d__d___ab_ihotelqianzhi__b__b___i_group_5_2_deallist_poitype__d__b___ab_"
    @"i550poi_shfw__d__leftflow___ab_ihotelpoilist__a__a___ab_itravelsearch0814__a__a___ab_i_group_6_0_search_hotword_"
    @"_b__leftflow___ab_sieve_multiple_staticscore__base__base___ab_h_hotel_search_hot__a__a___ab_i_group_5_9_onsite__"
    @"b__b___ab_i_group_pingjiapush__b__b___ab_b_catesearchreplace__b__b___ab_b_deal_sieve_migrate__b__b___ab_i_group_"
    @"travelhomepage0630__a__a___ab_i550poi_lr__b__b___ab_b_searchmaiton__a__a___ab_groupcontext__a__a___ab_maidan_"
    @"distance_first__smartfirst__smartfirst___ab_i_group_5_9notificationtest__a__a___ab_dealzhanshi__d__d1___ab_i_"
    @"group_5_8_dns__a__leftflow___ab_ihotelbkdetail__a__a___ab_v1_po1_sieve_migrate__search__search&utm_content="
    @"77D2A8EAB734CB15233F036E1F2DE780989E3AC89574510E548784CB2191AD75&utm_medium=iphone&utm_source=AppStore&utm_term="
    @"5.9.2&uuid=77D2A8EAB734CB15233F036E1F2DE780989E3AC89574510E548784CB2191AD75&version_name=5.9.2";


@implementation PanicBuying (request)

+ (void)requestPanicBuyingWithCompletion:(requestFinishedCompletionBlock)successBlock
                             FailedBlock:(requestFailedBlock)failedBlock
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:kRequestPanicBuyingURL
        parameters:nil
        success:^(AFHTTPRequestOperation *operation, id responseObject) {

          NSArray *panicBuyingArray = [MTLJSONAdapter modelsOfClass:[PanicBuying class]
                                                      fromJSONArray:responseObject[@"data"][@"deals"]
                                                              error:nil];
          if (successBlock) {
              successBlock(panicBuyingArray);
          }

        }
        failure:^(AFHTTPRequestOperation *operation, NSError *error) {
          failedBlock(error);
        }];
}

@end
