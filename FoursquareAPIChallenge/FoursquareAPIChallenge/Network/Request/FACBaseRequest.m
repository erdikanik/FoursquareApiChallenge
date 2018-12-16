//
//  FACBaseRequest.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACBaseRequest.h"

@interface FACBaseRequest()

@property (copy, nonatomic, readwrite) NSString *client_id;
@property (copy, nonatomic, readwrite) NSString *client_secret;
@property (copy, nonatomic, readwrite) NSString *v;

@end

@implementation FACBaseRequest

- (NSString *)requestUrl
{
    return @"";
}

- (NSString *)client_id
{
    return @"EYEDHO24TSL1CQOMKE2ER3BQ2NLEFMDFASNIUE1JKN2MRRM0";
}

- (NSString *)client_secret
{
    return @"MYZFUC33THQTGPNVDSOR030HSIBLALOWIP3CRLOAUH3P0GNO";
}

- (NSString *)v
{
    return @"20181230";
}

- (NSDictionary *)dictionaryValue {
    NSMutableDictionary *modifiedDictionaryValue = [[super dictionaryValue] mutableCopy];
    
    for (NSString *originalKey in [super dictionaryValue]) {
        if ([self valueForKey:originalKey] == nil) {
            [modifiedDictionaryValue removeObjectForKey:originalKey];
        }
    }
    
    return [modifiedDictionaryValue copy];
}

@end
