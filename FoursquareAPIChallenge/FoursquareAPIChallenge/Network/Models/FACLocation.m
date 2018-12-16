//
//  FACLocation.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACLocation.h"

@implementation FACLocation

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError *__autoreleasing *)error
{
    self = [super init];
    
    if (self)
    {
        _address = [dictionaryValue objectForKey:@"address"];
        _city = [dictionaryValue objectForKey:@"city"];
        _country = [dictionaryValue objectForKey:@"country"];
        _lat = [[dictionaryValue objectForKey:@"lat"] doubleValue]; ;
        _lng = [[dictionaryValue objectForKey:@"lng"] doubleValue];
    }
    
    return self;
}

@end
