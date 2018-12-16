//
//  FACMainPageFlow.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

@class FACVenue;

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FACMainPageFlow : NSObject

/**
 Initialize objects and prepare for methods
 */
- (void)initialize;

/**
 Call search venue service

 @param venueType venue type name
 @param placeName name of place, it can be null
 @param completion completion block
 */
- (void)callVenueSearchWithVenueType:(NSString *)venueType
                           placeName:(NSString *)placeName
                          completion:(void(^)(NSArray<FACVenue *> *, NSError *))completion;

@end

NS_ASSUME_NONNULL_END
