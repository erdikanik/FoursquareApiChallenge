//
//  LoadingView.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 17.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

NS_ASSUME_NONNULL_BEGIN

@interface FACLoadingView : UIView

/**
 Shows view with activity indicator
 */
+ (void)show;

/**
 Hides view with activity indicator
 */
+ (void)hide;

@end

NS_ASSUME_NONNULL_END
