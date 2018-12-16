//
//  FACVenuesListTableViewController.m
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

#import <MapKit/MapKit.h>
#import <UIImageView+AFNetworking.h>

#import "FACVenuesListTableViewController.h"
#import "FACPlaceCellTableViewCell.h"
#import "FACVenuesListFlow.h"
#import "FACVenue.h"
#import "FACLocation.h"
#import "UIView+FACAdditions.h"
#import "FACPlaceView.h"
#import "UIViewController+FACAdditions.h"
#import "FACLoadingView.h"

@interface FACVenuesListTableViewController ()

@end

@implementation FACVenuesListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Places";
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 20;
    
    UINib *nib = [UINib nibWithNibName:[FACPlaceCellTableViewCell fac_nibName] bundle:NSBundle.mainBundle];
    [self.tableView registerNib: nib forCellReuseIdentifier: [FACPlaceCellTableViewCell fac_reuseIndentifier]];
    
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.flow.venues.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FACPlaceCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([FACPlaceCellTableViewCell class]) forIndexPath:indexPath];
    
    FACVenue *venue = self.flow.venues[indexPath.row];
    cell.name = venue.name;
    
    NSString *adress = [NSString stringWithFormat:@"%@\n%@", venue.location.address, venue.location.city];
    cell.address = adress;
    cell.country = venue.location.country;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.flow.selectedVenue = self.flow.venues[indexPath.row];

    [FACLoadingView show];
    __weak __typeof__(self) weakSelf = self;

    [self.flow callVenueDetailsWithCompletion:^(NSString * _Nonnull imageUrl, NSArray<NSString *> * _Nonnull tips, NSError * _Nullable error) {
       [FACLoadingView hide];
        if (!error)
        {
            CLLocationCoordinate2D venueLocation = CLLocationCoordinate2DMake(weakSelf.flow.selectedVenue.location.lat,
                                                                              weakSelf.flow.selectedVenue.location.lng);
            FACPlaceView *placeView = [FACPlaceView showPlaceViewWithLocation:venueLocation tips:tips name:weakSelf.flow.selectedVenue.name];
            [placeView.imageView setImageWithURL:[NSURL URLWithString:imageUrl]];
        }
        else
        {
            [self fac_showAlertWithMessage:error.description];
        }
    }];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
