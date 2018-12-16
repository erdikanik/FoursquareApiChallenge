//
//  FACSearchVenuesResponse.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import <MTLModel.h>
#import "FACSearchVenuesResponse.h"
#import "FACVenue.h"

@implementation FACSearchVenuesResponse

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError *__autoreleasing *)error
{
    self = [self init];
    
    if (self)
    {
        NSMutableArray *mappedArray = [NSMutableArray new];
        
        NSArray *dictArray = [[dictionaryValue objectForKey:@"response"] objectForKey:@"venues"];
        
        for (NSDictionary *dict in dictArray)
        {
            NSError *error;
            FACVenue *venue = [[FACVenue alloc] initWithDictionary:dict error:&error];
            [mappedArray addObject: venue];
        }
        
        self.venues = mappedArray;
    }
    
    return self;
}

@end
