//
//  FACMainPageFlow.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

#import "FACMainPageFlow.h"
#import "FACSearchVenuesRequest.h"
#import "FACSearchVenuesResponse.h"
#import "FACNetworkManager.h"

@interface FACMainPageFlow()

@property (strong, nonatomic) CLLocationManager *locationManager;

@end

@implementation FACMainPageFlow

- (void)initialize
{
    self.locationManager = [[CLLocationManager alloc] init];
    [self.locationManager requestWhenInUseAuthorization];
    [self.locationManager startUpdatingLocation];
}

- (void)callVenueSearchWithVenueType:(NSString *)venueType
                           placeName:(NSString *)placeName
                          completion:(void(^)(NSArray<FACVenue *> *, NSError *))completion
{
    FACSearchVenuesRequest *request = [FACSearchVenuesRequest new];
    
    request.query = venueType;
    
    if (placeName.length > 0)
    {
        request.near = placeName;
    }
    else
    {
        CLLocationCoordinate2D coordinate = self.locationManager.location.coordinate;
        NSString *coorString = [NSString stringWithFormat:@"%f,%f", coordinate.latitude, coordinate.longitude];
        request.ll = coorString;
    }
    
    [[FACNetworkManager sharedManager] connectWithGETMethod:request
                                              responseClass:[FACSearchVenuesResponse class]
                                                 completion:^(FACSearchVenuesResponse * response, NSError * error) {
                                                     
                                                     if (completion != nil) {
                                                         completion(response.venues, error);
                                                     }
        
    }];

}

@end
