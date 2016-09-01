//
//  Meal.h
//  Builder
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
@interface Meal : NSObject
{
@private
    NSMutableArray<id<Item>>* items;
}
-(void)addItem:(id<Item>)aItem;
-(float)getCost;
-(void)showItems;
@end
