//
//  UITextField+FACAdditions.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 15.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "UITextField+FACAdditions.h"
#import "UIFont+FACAdditions.h"

static CGFloat   kSearchBarCornerRadius = 6.0;
static CGFloat   kSearchBarPlaceHolderFontSize = 17.0;

@implementation UITextField (FACAdditions)

- (void)fac_applySearchbarStylingWithPlaceHolderText:(NSString *)placeHolderText
{
    self.layer.cornerRadius = kSearchBarCornerRadius;
    UIColor *placeHolderColor = [UIColor colorWithRed:199.0 / 255.0 green:199.0 / 255.0 blue:205.0 / 255.0 alpha:1];
    
    NSDictionary *attributes = @{
                                 NSForegroundColorAttributeName : placeHolderColor,
                                 NSFontAttributeName : [UIFont fac_mainLightFontWithSize:kSearchBarPlaceHolderFontSize]
                                 };
    
    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:placeHolderText
                                                                 attributes:attributes];
    [self setReturnKeyType:UIReturnKeyDone];
}

@end
