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

@interface FACPlaceView()

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
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
}

@end
