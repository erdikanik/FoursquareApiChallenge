//
//  FACDetailsVenueRequest.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACDetailsVenueRequest.h"

@implementation FACDetailsVenueRequest

- (NSString *)requestUrl
{
    return [NSString stringWithFormat:@"/%@", self.venueId];
}

@end
