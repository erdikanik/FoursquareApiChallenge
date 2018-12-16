//
//  FACNetworkManager.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 15.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import <AFNetworking.h>
#import "FACNetworkManager.h"
#import "FACBaseRequest.h"

static NSString *kAppUrl = @"https://api.foursquare.com/v2/venues";
static NSString *kRequestMethod = @"GET";

@interface FACNetworkManager()<NSURLSessionDelegate>

@property (strong, nonatomic) NSURLSessionDataTask *dataTask;

@end

@implementation FACNetworkManager

+ (instancetype)sharedManager
{
    static FACNetworkManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[FACNetworkManager alloc] init];
    });
    return sharedManager;
}

- (void)connectWithGETMethod:(id <MTLModel, FACRequestProtocol>)request
               responseClass:(Class)responseClass
                  completion:(void(^)(id<MTLModel>, NSError *))completion
{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
    [manager GET:[kAppUrl stringByAppendingString:request.requestUrl] parameters:[request dictionaryValue]
        progress:nil
         success:^(NSURLSessionTask *task, id responseObject) {
            
             if (!completion)
             {
                 return;
             }
             
             NSError *error;
             if ([responseObject isKindOfClass:[NSDictionary class]]) {
                 id<MTLModel> response = [[responseClass alloc] initWithDictionary:responseObject error:&error];
                 completion(response, nil);
             }
             else
             {
                 completion(nil, [NSError new]);
             }
             
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        completion(nil, error);
    }];
}

@end
