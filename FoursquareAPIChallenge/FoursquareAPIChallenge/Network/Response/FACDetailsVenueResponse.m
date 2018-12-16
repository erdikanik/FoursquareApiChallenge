//
//  FACDetailsVenueResponse.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACDetailsVenueResponse.h"

@interface FACDetailsVenueResponse()

@property (copy, nonatomic, readwrite) NSString *imageUrl;
@property (strong, nonatomic, readwrite) NSArray<NSString *> *tips;

@end

@implementation FACDetailsVenueResponse

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError *__autoreleasing *)error
{
    self = [super init];
    
    if (self)
    {
        NSDictionary *venueDict = [[dictionaryValue objectForKey:@"response"] objectForKey:@"venue"];
        NSArray *dictArray = [[[[venueDict objectForKey:@"tips"] objectForKey:@"groups"] firstObject] objectForKey:@"items"];
        
        NSMutableArray *mutableTipsArray = [NSMutableArray new];
        
        for (NSDictionary *dict in dictArray)
        {
            NSString *text = [dict objectForKey:@"text"];
            [mutableTipsArray addObject:text];
        }
        
        self.tips = mutableTipsArray;
        
        NSString *prefixPhoto = [[venueDict objectForKey:@"bestPhoto"] objectForKey:@"prefix"];
        NSString *suffixPhoto = [[venueDict objectForKey:@"bestPhoto"] objectForKey:@"suffix"];
        
        self.imageUrl = [NSString stringWithFormat:@"%@311x200%@",prefixPhoto, suffixPhoto];

    }
    
    return self;
}

@end
