//
//  WareHouse.h
//  Patterns_13_Visitors
//
//  Created by Ильяс on 16.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WareHouseItem.h"
#import "BasicVisitor.h"

@interface WareHouse : NSObject

@property (nonatomic, strong) NSMutableArray *itemsArray;

- (void)addItem:(WareHouseItem *)anItem;
- (void)accept:(id<BasicVisitor>)visitor;

@end
