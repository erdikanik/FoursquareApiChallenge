//
//  FACMainPageViewController.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 15.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACMainPageViewController.h"
#import "UITextField+FACAdditions.h"
#import "UIButton+FACAdditions.h"
#import "FACVenuesListTableViewController.h"
#import "FACMainPageFlow.h"
#import "FACVenuesListFlow.h"
#import "UIViewController+FACAdditions.h"

static CGFloat kSubmitButtonSearchIconLeftAlign = 12.0;
static CGFloat kSubmitButtonSearchIconWidth = 18.0;
static NSInteger kVenueTypeTextfieldMaxCharacters = 3;

@interface FACMainPageViewController ()<UITextFieldDelegate>

@property (strong, nonatomic) FACMainPageFlow *mainPageFlow;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UITextField *venueTypeTextField;
@property (weak, nonatomic) IBOutlet UITextField *placeNameTextField;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;

@end

@implementation FACMainPageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.mainPageFlow = [FACMainPageFlow new];
    [self.mainPageFlow initialize];
    
    self.title = @"Main Page";
    [self applyStyling];
}

- (void)applyStyling
{
    [self.submitButton setNeedsLayout];
    [self.submitButton layoutIfNeeded];
    
    [self.venueTypeTextField fac_applySearchbarStylingWithPlaceHolderText:@"Exp. Cafe, Bar"];
    [self.placeNameTextField fac_applySearchbarStylingWithPlaceHolderText:@"Close to me"];
    [self.submitButton fac_applyMainButtonStyling];
    [self.submitButton setTitle:@"Search" forState:UIControlStateNormal];
    
    [self.submitButton.titleLabel setTextAlignment:NSTextAlignmentCenter];
    [self.submitButton setImageEdgeInsets:UIEdgeInsetsMake(0.0, kSubmitButtonSearchIconLeftAlign, 0.0, 0.0)];
    [self.submitButton setTitleEdgeInsets:
     UIEdgeInsetsMake(0.0, self.submitButton.frame.size.width / 2 - kSubmitButtonSearchIconWidth * 2 - kSubmitButtonSearchIconLeftAlign , 0.0, 0.0)];
    [self.submitButton setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
}

- (IBAction)mainButtonTapped:(id)sender
{
    [self.venueTypeTextField resignFirstResponder];
    [self.placeNameTextField resignFirstResponder];
    
    if (self.venueTypeTextField.text.length < kVenueTypeTextfieldMaxCharacters)
    {
        [self fac_showAlertWithMessage:@"Please enter at least 3 characters"];
    } else {
        
        __weak __typeof__(self) weakSelf = self;
        [self.mainPageFlow callVenueSearchWithVenueType:self.venueTypeTextField.text
                                              placeName:self.placeNameTextField.text
                                             completion:^(NSArray * _Nonnull venues, NSError * _Nonnull error) {
                                                 
                                                 if (!error) {
                                                     UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:NSBundle.mainBundle];
                                                     FACVenuesListTableViewController *viewController = (FACVenuesListTableViewController *)[storyboard instantiateViewControllerWithIdentifier:NSStringFromClass ([FACVenuesListTableViewController class])];
                                                     viewController.flow = [[FACVenuesListFlow alloc] initWithVenuesList:venues];
                                                     [weakSelf.navigationController pushViewController:viewController animated:YES];
                                                 }
                                                 else
                                                 {
                                                     [self fac_showAlertWithMessage:error.description];
                                                 }
                                              }];
        

        
    }
}
- (IBAction)textFieldEditingChanged:(UITextField *)sender {
    
    if (sender == self.venueTypeTextField)
    {
        NSString* newStr = [sender.text stringByTrimmingCharactersInSet:[[NSCharacterSet letterCharacterSet] invertedSet]];
        
        if ([newStr length] < [sender.text length])
        {
            sender.text = newStr;
        }
    }
}
- (IBAction)textFieldDidBeginEditing:(UITextField *)sender {
    [self.scrollView setContentOffset:CGPointMake(0, sender.superview.frame.origin.y) animated:YES];

}

- (IBAction)textFieldDidEndEditing:(UITextField *)sender {
    [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
}

#pragma MARK - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.placeNameTextField resignFirstResponder];
    [self.venueTypeTextField resignFirstResponder];
    
    return YES;
}

@end
