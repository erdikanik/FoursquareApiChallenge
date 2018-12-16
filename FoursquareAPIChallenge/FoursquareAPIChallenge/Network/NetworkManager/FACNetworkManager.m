//
//  FACNetworkManager.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 15.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACNetworkManager.h"
#import "FACRequestProtocol.h"
#import "FACResponseProtocol.h"

static NSString *kAppUrl = @"https://s3-eu-west-1.amazonaws.com/developer-application-test";
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

- (void)connectWithGETMethod:(id<FACRequestProtocol>)request
               responseClass:(Class)responseClass
                  completion:(void(^)(id<FACResponseProtocol>, NSError *))completion
{
    NSURL *url = [NSURL URLWithString:[kAppUrl stringByAppendingString:request.requestUrl]];
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url];

    [urlRequest setHTTPMethod:kRequestMethod];
    [urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [urlRequest setValue:@"application/json" forHTTPHeaderField:@"Accept"];

    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];

    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration delegate:self delegateQueue:[NSOperationQueue mainQueue]];
    self.dataTask = [session dataTaskWithRequest: urlRequest
                               completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable urlResponse, NSError * _Nullable error) {

        if (completion != nil)
        {
            id<FACResponseProtocol> response = [[responseClass alloc] init];

            NSError *error;
            NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
            [response loadObjectDictionary:dictionary];
            completion(response, error);
        }
    }];
    [self.dataTask resume];
}

@end
