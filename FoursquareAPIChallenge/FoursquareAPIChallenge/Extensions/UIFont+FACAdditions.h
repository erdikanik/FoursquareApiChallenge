//
//  UIFont.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 15.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

@interface UIFont (FACAdditions)

/**
 Creates default light font of application

 @param size size of font
 @return font object
 */
+ (UIFont *)mainLightFontWithSize:(CGFloat)size;

/**
 Creates default regular font of application

 @param size size of font
 @return font object
 */
+ (UIFont *)mainRegularFontWithSize:(CGFloat)size;

/**
 Creates default semibold font of application

 @param size size of font
 @return font object
 */
+ (UIFont *)mainSemiboldFontWithSize:(CGFloat)size;

/**
 Creates default medium font of application

 @param size size of font
 @return font object
 */
+ (UIFont *)mainMediumFontWithSize:(CGFloat)size;

@end
