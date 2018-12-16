//
//  UIView.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "UIView+FACAdditions.h"

@implementation UIView (FACAdditions)

+ (UIView *)fac_viewInstance
{
    return (UIView *)[NSBundle.mainBundle loadNibNamed:[self fac_nibName] owner:self options:nil].firstObject;
}

+ (NSString *)fac_reuseIndentifier
{
    return NSStringFromClass([self class]);
}

+ (NSString *)fac_nibName
{
    return [self fac_reuseIndentifier];
}

- (void)fac_coverToSuperView:(UIView *)superView
{
    [superView addSubview:self];
    self.translatesAutoresizingMaskIntoConstraints = NO;
    
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                          attribute:NSLayoutAttributeTop
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:superView
                                                          attribute:NSLayoutAttributeTop
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                          attribute:NSLayoutAttributeLeading
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:superView
                                                          attribute:NSLayoutAttributeLeading
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:superView
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                          attribute:NSLayoutAttributeTrailing
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:superView
                                                          attribute:NSLayoutAttributeTrailing
                                                         multiplier:1.0
                                                           constant:0.0]];
    
}

@end
