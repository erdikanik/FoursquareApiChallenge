//
//  FACVenue.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACVenue.h"
#import "FACLocation.h"

@implementation FACVenue

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError *__autoreleasing *)error
{
    self = [super init];
    
    if (self)
    {
        _identifier = [dictionaryValue objectForKey:@"id"];
        _name = [dictionaryValue objectForKey:@"name"];
        
        NSError *error;
        _location = [[FACLocation alloc] initWithDictionary:[dictionaryValue objectForKey:@"location"] error:&error];
    }
    
    return self;
}

@end
