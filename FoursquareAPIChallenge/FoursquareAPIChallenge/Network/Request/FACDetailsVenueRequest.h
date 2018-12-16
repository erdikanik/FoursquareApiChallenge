//
//  FACDetailsVenueRequest.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACBaseRequest.h"

NS_ASSUME_NONNULL_BEGIN

@interface FACDetailsVenueRequest : FACBaseRequest

@property (copy, nonatomic) NSString *venueId;

@end

NS_ASSUME_NONNULL_END
