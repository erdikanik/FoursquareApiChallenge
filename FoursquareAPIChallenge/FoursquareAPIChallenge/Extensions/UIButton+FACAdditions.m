//
//  UIButton+FACAdditions.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 15.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "UIButton+FACAdditions.h"
#import "UIFont+FACAdditions.h"

static CGFloat kMainButtonCornerRadius = 6.0;
static CGFloat kMainButtonFontSize = 17.0;

@implementation UIButton (FACAdditions)

- (void)fac_applyMainButtonStyling
{
    self.layer.cornerRadius = kMainButtonCornerRadius;
    self.titleLabel.font = [UIFont fac_mainSemiboldFontWithSize:kMainButtonFontSize];
}

@end
