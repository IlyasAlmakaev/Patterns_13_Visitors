//
//  WareHouse.m
//  Patterns_13_Visitors
//
//  Created by Ильяс on 16.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "WareHouse.h"

@implementation WareHouse

- (void)addItem:(WareHouseItem *)anItem {
    if (!self.itemsArray) {
        self.itemsArray = [[NSMutableArray alloc] init];
    }
    
    [self.itemsArray addObject:anItem];
}

- (void)accept:(id<BasicVisitor>)visitor {
    [visitor visit:self];
    for (WareHouseItem *item in self.itemsArray) {
        [visitor visit:item];
    }
    
}

@end
