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
    return @"NGGK5DUPTZQJ051UEQIP4HOQ0K4LQFNOG3LQWMM02WD41OLO";
}

- (NSString *)client_secret
{
    return @"K40K2XDATUZHI5OUHTB2NFGM5511B2UXIQTQDWWYORRUHN2E";
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
