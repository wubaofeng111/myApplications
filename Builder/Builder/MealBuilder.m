//
//  MealBuilder.m
//  Builder
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import "MealBuilder.h"
#import "VegBurger.h";
#import "ChickenBurger.h"
#import "Coke.h"
#import "Pepsi.h"
@implementation MealBuilder
-(Meal*)prepareVegMeal
{
    Meal *meal = [[Meal alloc]init];
    [meal addItem:[[VegBurger alloc]init]];
    [meal addItem:[[Coke alloc]init]];
    return meal;
}
-(Meal*)prepareNonVegMeal
{
    
    Meal *meal = [[Meal alloc]init];
    [meal addItem:[[ChickenBurger alloc]init]];
    [meal addItem:[[Pepsi alloc]init]];
    return meal;
}
@end
