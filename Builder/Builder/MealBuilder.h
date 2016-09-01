//
//  MealBuilder.h
//  Builder
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Meal.h"
@interface MealBuilder : NSObject
-(Meal*)prepareVegMeal;
-(Meal*)prepareNonVegMeal;
@end
