//
//  FACSearchVenuesResponse.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

@class FACVenue;

#import "MTLModel.h"


NS_ASSUME_NONNULL_BEGIN

@interface FACSearchVenuesResponse : MTLModel

@property (copy, nonatomic) NSArray<FACVenue *> *venues;

@end

NS_ASSUME_NONNULL_END
