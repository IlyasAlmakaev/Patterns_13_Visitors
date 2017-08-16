//
//  WareHouseItem.m
//  Patterns_13_Visitors
//
//  Created by Ильяс on 16.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "WareHouseItem.h"

@implementation WareHouseItem

- (id)initWithArgs:(NSString *)aName andQuality:(BOOL)isBrokenState andPrice:(int)aPrice {
    self = [super init];
    self.name = aName;
    self.isBroken = isBrokenState;
    self.price = aPrice;
    
    return self;
}

@end
