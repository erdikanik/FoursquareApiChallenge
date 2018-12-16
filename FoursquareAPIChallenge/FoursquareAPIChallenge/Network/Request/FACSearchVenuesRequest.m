//
//  FACSearchVenuesRequest.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACSearchVenuesRequest.h"

static NSString *kUrlExtension = @"/search";

@implementation FACSearchVenuesRequest

- (NSString *)requestUrl
{
    return kUrlExtension;
}

@end
