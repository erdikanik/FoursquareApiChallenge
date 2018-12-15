//
//  UIFont.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 15.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "UIFont+FACAdditions.h"

static NSString *kMainLightFont = @"SanFranciscoDisplay-Light";
static NSString *kMainMediumFont = @"SanFranciscoDisplay-Medium";
static NSString *kMainRegularFont = @"SanFranciscoDisplay-Regular";
static NSString *kMainSemiboldFont = @"SanFranciscoDisplay-Semibold";

@implementation UIFont (FACAdditions)

+ (UIFont *)mainLightFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:kMainLightFont size:size];
}

+ (UIFont *)mainMediumFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:kMainMediumFont size:size];
}

+ (UIFont *)mainRegularFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:kMainRegularFont size:size];
}

+ (UIFont *)mainSemiboldFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:kMainSemiboldFont size:size];
}

@end
