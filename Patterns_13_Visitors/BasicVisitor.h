//
//  BasicVisitor.h
//  Patterns_13_Visitors
//
//  Created by Ильяс on 16.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BasicVisitor <NSObject>

- (void)visit:(id)anObject;

@end
