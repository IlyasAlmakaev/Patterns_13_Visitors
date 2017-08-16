//
//  PriceChekerVisitor.m
//  Patterns_13_Visitors
//
//  Created by Ильяс on 16.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "PriceChekerVisitor.h"

@implementation PriceChekerVisitor

- (void)visit:(id)anObject {
    if ([anObject isKindOfClass:[WareHouseItem class]]) {
        NSLog(@"Item: %@ have price = %i", [anObject name], [anObject price]);
    }
    if ([anObject isKindOfClass:[WareHouse class]]) {
        NSLog(@"Hmmm, I don't know how much Warehouse costs!");
        return;
    }
}

@end
