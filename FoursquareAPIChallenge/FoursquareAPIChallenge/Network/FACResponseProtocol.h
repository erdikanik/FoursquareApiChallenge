//
//  FACResponseProtocol.h
//  FoursquareAPIChallenge
//
//  Created by Erdi on 16.12.2018.
//  Copyright © 2018 erdikanik. All rights reserved.
//

@protocol FACResponseProtocol

/**
 Loads object dictionary for mapping

 @param dictionary Dictionary object
 */
- (void)loadObjectDictionary:(NSDictionary *)dictionary;

@end
