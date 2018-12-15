//
//  FACPlaceCellTableViewCell.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 15.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import "FACPlaceCellTableViewCell.h"
#import "UIFont+FACAdditions.h"

static CGFloat kNameLabelFontSize = 17.0;
static CGFloat kAdressLabelFontSize = 15.0;
static CGFloat kCountryLabelFontSize = 13.0;

@interface FACPlaceCellTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *adressLabel;
@property (weak, nonatomic) IBOutlet UILabel *countryLabel;

@end

@implementation FACPlaceCellTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self applyStyling];
}

- (void)applyStyling
{
    self.nameLabel.textColor =  [UIColor colorWithRed:70/255.0 green:46/255.0 blue:197/255.0 alpha:1/1.0];
    self.nameLabel.font = [UIFont fac_mainMediumFontWithSize:kNameLabelFontSize];
    
    self.adressLabel.textColor =  [UIColor blackColor];
    self.adressLabel.font = [UIFont fac_mainRegularFontWithSize:kAdressLabelFontSize];
    
    self.countryLabel.textColor = [UIColor colorWithRed:184/255.0 green:184/255.0 blue:184/255.0 alpha:1/1.0];
    self.countryLabel.font = [UIFont fac_mainRegularFontWithSize:kCountryLabelFontSize];
}

@end
