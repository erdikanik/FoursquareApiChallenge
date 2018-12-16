//
//  UIViewController.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "UIViewController+FACAdditions.h"

@implementation UIViewController (FACAdditions)

- (void)fac_showAlertWithMessage:(NSString *)message
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@""
                                                                             message: message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *doneAction = [UIAlertAction
                                 actionWithTitle:@"DONE"
                                 style:UIAlertActionStyleDefault
                                 handler: nil];
    
    [alertController addAction:doneAction];
    [self presentViewController:alertController animated:YES completion: nil];
}

@end
