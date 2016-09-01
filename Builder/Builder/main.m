//
//  main.m
//  Builder
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MealBuilder.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        MealBuilder *builder = [[MealBuilder alloc]init];
        Meal*vegMeal = [builder prepareVegMeal];
        Meal*cheMeal = [builder prepareNonVegMeal];
        
        [vegMeal showItems];
        [cheMeal showItems];
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
