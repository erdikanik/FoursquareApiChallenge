//
//  UIFont.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 15.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "UIFont+FACAdditions.h"

static NSString *kMainLightFont = @".SFUIText-Light";
static NSString *kMainMediumFont = @".SFUIText-Medium";
static NSString *kMainRegularFont = @".SFUIText-Regular";
static NSString *kMainSemiboldFont = @".SFUIText-Semibold";

@implementation UIFont (FACAdditions)

+ (UIFont *)fac_mainLightFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:kMainLightFont size:size];
}

+ (UIFont *)fac_mainMediumFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:kMainMediumFont size:size];
}

+ (UIFont *)fac_mainRegularFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:kMainRegularFont size:size];
}

+ (UIFont *)fac_mainSemiboldFontWithSize:(CGFloat)size
{
    return [UIFont fontWithName:kMainSemiboldFont size:size];
}

@end
