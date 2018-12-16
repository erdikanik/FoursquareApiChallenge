//
//  LoadingView.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 17.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACLoadingView.h"
#import "UIView+FACAdditions.h"

@interface FACLoadingView()

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation FACLoadingView

+ (void)show
{
    FACLoadingView *loadingView = (FACLoadingView *)[FACLoadingView fac_viewInstance];
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    [loadingView fac_coverToSuperView:window];
}

+ (void)hide
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    
    for (UIView *view in window.subviews)
    {
        if ([view isKindOfClass:[FACLoadingView class]])
        {
            [view removeFromSuperview];
        }
    }
}

@end
