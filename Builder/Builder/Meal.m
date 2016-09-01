//
//  Meal.m
//  Builder
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import "Meal.h"

@implementation Meal
-(id)init
{
    if (self = [super init]) {
        items = [NSMutableArray array];
    }
    return self;
}
-(void)addItem:(id<Item>)aItem
{
    [items addObject:aItem];
}
-(float)getCost
{
    float cost = 0.0f;
    for (id<Item> item in items) {
        cost += [item price];
    }
    return cost;
}
-(void)showItems
{
    for (id<Item> item in items) {
        NSLog(@"item:%@",item.name);
        NSLog(@"pack:%@",[[item packing] pack]);
        NSLog(@"price:%lf",[item price]);
    }
}
@end
