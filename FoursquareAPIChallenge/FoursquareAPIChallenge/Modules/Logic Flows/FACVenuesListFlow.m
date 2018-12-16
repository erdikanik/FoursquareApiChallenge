//
//  FACVenuesListFlow.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACVenuesListFlow.h"
#import "FACVenue.h"
#import "FACDetailsVenueRequest.h"
#import "FACDetailsVenueResponse.h"
#import "FACNetworkManager.h"
#import "FACPlaceView.h"

@interface FACVenuesListFlow()

@property (strong, nonatomic, readwrite) NSArray<FACVenue *> *venues;

@end

@implementation FACVenuesListFlow

- (instancetype)initWithVenuesList:(NSArray<FACVenue *> *)venueList
{
    self = [super init];
    
    if (self)
    {
        _venues = venueList;
    }
    
    return self;
}

- (void)callVenueDetailsWithCompletion:(void(^)(NSString *imageUrl,
                                                NSArray<NSString *> *tips ,
                                                NSError * _Nullable))completion
{
    FACDetailsVenueRequest *request = [FACDetailsVenueRequest new];
    
    request.venueId = self.selectedVenue.identifier;
    
    [[FACNetworkManager sharedManager] connectWithGETMethod:request
                                              responseClass:[FACDetailsVenueResponse class]
                                                 completion:^(FACDetailsVenueResponse * response, NSError * error) {
                                                     
                                                     if (!completion)
                                                     {
                                                         return;
                                                     }
                                                     
                                                     completion(response.imageUrl, response.tips, error);
                                                 }];

}

@end
