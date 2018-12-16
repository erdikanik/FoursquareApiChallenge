//
//  FACSearchVenuesRequest.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACSearchVenuesRequest.h"
#import "FACBaseRequest.h"

NS_ASSUME_NONNULL_BEGIN

@interface FACSearchVenuesRequest : FACBaseRequest

@property (copy, nonatomic) NSString *query;
@property (copy, nonatomic) NSString *near;
@property (copy, nonatomic) NSString *ll;

@end

NS_ASSUME_NONNULL_END
