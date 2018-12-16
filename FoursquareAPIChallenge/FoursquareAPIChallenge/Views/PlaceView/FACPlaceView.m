//
//  FACPlaceView.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import <MapKit/MapKit.h>
#import "FACPlaceView.h"
#import "UIFont+FACAdditions.h"
#import "UIView+FACAdditions.h"

static CGFloat kContainerViewCornerRadius = 12.0;

@interface FACPlaceView()

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UIView *nameView;
@property (weak, nonatomic) IBOutlet UILabel *nameViewLabel;
@property (weak, nonatomic) IBOutlet UILabel *tipsLabel;
@property (weak, nonatomic) IBOutlet UIView *tipsView;
@property (weak, nonatomic) IBOutlet UILabel *commentsLabel;

@end

@implementation FACPlaceView

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self applyStyling];
}

- (void)applyStyling
{
    self.nameViewLabel.font = [UIFont fac_mainSemiboldFontWithSize:16];
    self.tipsLabel.font = [UIFont fac_mainSemiboldFontWithSize:14];
    self.commentsLabel.font = [UIFont fac_mainRegularFontWithSize:14];
    
    self.containerView.layer.cornerRadius = kContainerViewCornerRadius;
    
}

+ (FACPlaceView *)showPlaceViewWithLocation:(CLLocationCoordinate2D)location
                                       tips:(NSArray <NSString *>*)tips
                                       name:(NSString *)name
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];

    FACPlaceView *placeView = (FACPlaceView *)[FACPlaceView fac_viewInstance];
    [placeView fac_coverToSuperView:window];
    
    MKPointAnnotation *annotion = [MKPointAnnotation new];
    annotion.coordinate = location;
    
    placeView.mapView.centerCoordinate = location;
    [placeView.mapView addAnnotation:annotion];
    
    NSMutableString *mutableString = [[NSMutableString alloc] init];
    for (NSString *tip in tips)
    {
        [mutableString appendString:tip];
        [mutableString appendString:@"\n"];
    }
    
    placeView.commentsLabel.text = mutableString;
    placeView.tipsLabel.text = @"Tips";
    placeView.nameViewLabel.text = name;
    
    return placeView;
}

@end
