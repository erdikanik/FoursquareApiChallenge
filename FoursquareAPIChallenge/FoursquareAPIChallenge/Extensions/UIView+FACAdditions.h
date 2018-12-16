//
//  UIView.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

@interface UIView (FACAdditions)

/**
 Creates view instance with xib

 @return View with xib
 */
+ (UIView *)fac_viewInstance;

/**
 Reuse identifier of view

 @return reuse identifier
 */
+ (NSString *)fac_reuseIndentifier;

/**
 Nib name of view

 @return Nib name
 */
+ (NSString *)fac_nibName;

/**
 Add view to superview and it cover to superview

 @param superView superview object
 */
- (void)fac_coverToSuperView:(UIView *)superView;

@end
