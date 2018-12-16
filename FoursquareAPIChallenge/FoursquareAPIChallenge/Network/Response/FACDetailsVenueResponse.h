//
//  FACDetailsVenueResponse.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import <MTLModel.h>

NS_ASSUME_NONNULL_BEGIN

@interface FACDetailsVenueResponse : MTLModel

@property (copy, nonatomic, readonly) NSString *imageUrl;
@property (strong, nonatomic, readonly) NSArray<NSString *> *tips;

@end

NS_ASSUME_NONNULL_END
