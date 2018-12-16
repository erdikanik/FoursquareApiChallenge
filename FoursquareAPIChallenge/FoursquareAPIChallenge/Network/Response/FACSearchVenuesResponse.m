//
//  FACSearchVenuesResponse.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACSearchVenuesResponse.h"

@implementation FACSearchVenuesResponse

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError *__autoreleasing *)error
{
    self = [super init];
    
    if (self)
    {
        self.venues = [dictionaryValue objectForKey:@"venues"];
    }
    
    return self;
}

@end
