//
//  WareHouseItem.h
//  Patterns_13_Visitors
//
//  Created by Ильяс on 16.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WareHouseItem : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) BOOL isBroken;
@property (nonatomic, assign) int price;

- (id)initWithArgs:(NSString *)aName andQuality:(BOOL)isBrokenState andPrice:(int)aPrice;

@end
