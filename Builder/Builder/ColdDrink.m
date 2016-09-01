//
//  ColdDrink.m
//  Builder
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import "ColdDrink.h"
#import "Bottle.h"
@implementation ColdDrink
-(id<Packing>)packing
{
    return [Bottle new];
}
-(float)price
{
    return 0;
}
@end
