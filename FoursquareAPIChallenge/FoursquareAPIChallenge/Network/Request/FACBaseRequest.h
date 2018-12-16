//
//  FACBaseRequest.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "MTLModel.h"
#import "FACRequestProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface FACBaseRequest : MTLModel<FACRequestProtocol>

@property (copy, nonatomic, readonly) NSString *client_id;
@property (copy, nonatomic, readonly) NSString *client_secret;
@property (copy, nonatomic, readonly) NSString *v;

@end

NS_ASSUME_NONNULL_END
