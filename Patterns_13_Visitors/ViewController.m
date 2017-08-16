//
//  ViewController.m
//  Patterns_13_Visitors
//
//  Created by Ильяс on 11.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "ViewController.h"
#import "WareHouse.h"
#import "PriceChekerVisitor.h"
#import "QualityChekerVisitor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WareHouse *localWareHouse = [[WareHouse alloc] init];
    [localWareHouse addItem:[[WareHouseItem alloc] initWithArgs:@"Item1" andQuality:NO andPrice:25]];
    [localWareHouse addItem:[[WareHouseItem alloc] initWithArgs:@"Item2" andQuality:NO andPrice:32]];
    [localWareHouse addItem:[[WareHouseItem alloc] initWithArgs:@"Item3" andQuality:YES andPrice:45]];
    [localWareHouse addItem:[[WareHouseItem alloc] initWithArgs:@"Item4" andQuality:NO andPrice:33]];
    [localWareHouse addItem:[[WareHouseItem alloc] initWithArgs:@"Item5" andQuality:NO andPrice:12]];
    [localWareHouse addItem:[[WareHouseItem alloc] initWithArgs:@"Item6" andQuality:YES andPrice:78]];
    [localWareHouse addItem:[[WareHouseItem alloc] initWithArgs:@"Item7" andQuality:YES andPrice:34]];
    [localWareHouse addItem:[[WareHouseItem alloc] initWithArgs:@"Item8" andQuality:NO andPrice:51]];
    [localWareHouse addItem:[[WareHouseItem alloc] initWithArgs:@"Item9" andQuality:NO andPrice:25]];
    
    PriceChekerVisitor *visitor = [[PriceChekerVisitor alloc] init];
    QualityChekerVisitor *qualityVisitor = [[QualityChekerVisitor alloc] init];
    
    [localWareHouse accept:visitor];
    [localWareHouse accept:qualityVisitor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
