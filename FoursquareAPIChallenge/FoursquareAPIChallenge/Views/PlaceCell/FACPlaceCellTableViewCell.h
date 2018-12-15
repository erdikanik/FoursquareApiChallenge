//
//  FACPlaceCellTableViewCell.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 15.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FACPlaceCellTableViewCell : UITableViewCell

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *adress;
@property (copy, nonatomic) NSString *country;

@end

NS_ASSUME_NONNULL_END
