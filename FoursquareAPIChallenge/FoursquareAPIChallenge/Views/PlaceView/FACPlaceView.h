//
//  FACPlaceView.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FACPlaceView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

/**
 Shows place view

 @param location Given location
 @param tips text array
 @param name name of venue
 @return place view instance
 */
+ (FACPlaceView *)showPlaceViewWithLocation:(CLLocationCoordinate2D)location
                                       tips:(NSArray <NSString *>*)tips
                                       name:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
