//
//  FACVenue.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

@class FACLocation;

#import "MTLModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface FACVenue : MTLModel

@property (copy, nonatomic) NSString *identifier;
@property (copy, nonatomic) NSString *name;
@property (strong, nonatomic) FACLocation *location;


@end

NS_ASSUME_NONNULL_END
