//
//  FACNetworkManager.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 15.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

@protocol FACRequestProtocol;
@protocol FACResponseProtocol;

@interface FACNetworkManager : NSObject

/**
 FACNetworkManager static instance

 @return Instance of FACNetworkManager
 */
+ (instancetype)sharedManager;

/**
 Fetchs data by given request

 @param request Request object
 @param responseClass Class of response object
 @param completion Completion block
 */
- (void)connectWithGETMethod:(id<FACRequestProtocol>)request
               responseClass:(Class)responseClass
                  completion:(void(^)(id<FACResponseProtocol>, NSError *))completion;

@end
