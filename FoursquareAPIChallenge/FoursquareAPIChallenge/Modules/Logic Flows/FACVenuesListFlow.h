//
//  FACVenuesListFlow.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

@class FACVenue;

NS_ASSUME_NONNULL_BEGIN

@interface FACVenuesListFlow : NSObject

@property (strong, nonatomic, readonly) NSArray<FACVenue *> *venues;
@property (strong, nonatomic) FACVenue *selectedVenue;


/**
 Creates FACVenuesListFlow instance
 
 @param venueList List of venues
 @return Instance of FACVenuesListFlow
 */
- (instancetype)initWithVenuesList:(NSArray<FACVenue *> *)venueList;

/**
 Calls venue details service

 @param completion Completion block
 */
- (void)callVenueDetailsWithCompletion:(void(^)(NSString *imageUrl,
                                                NSArray<NSString *> *tips ,
                                                NSError * _Nullable))completion;

@end

NS_ASSUME_NONNULL_END
