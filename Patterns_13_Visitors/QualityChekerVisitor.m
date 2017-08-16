//
//  QualityChekerVisitor.m
//  Patterns_13_Visitors
//
//  Created by Ильяс on 16.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "QualityChekerVisitor.h"

@implementation QualityChekerVisitor

- (void)visit:(id)anObject {
    if ([anObject isKindOfClass:[WareHouseItem class]]) {
        if ([anObject isBroken]) {
            NSLog(@"Item: %@ is broken", [anObject name]);
        } else {
            NSLog(@"Item: %@ is pretty cool!", [anObject name]);
        }
    }
    if ([anObject isKindOfClass:[WareHouse class]]) {
        NSLog(@"Hmmm, nice warehouse!");
        return;
    }
}

@end
