//
//  FACLocation.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "MTLModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface FACLocation : MTLModel

@property (copy, nonatomic) NSString *adress;
@property (copy, nonatomic) NSString *city;

@end

NS_ASSUME_NONNULL_END
