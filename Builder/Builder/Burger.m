//
//  Burger.m
//  Builder
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import "Burger.h"
#import "Wrapper.h"
@implementation Burger
-(id<Packing>)packing
{
    return [Wrapper new];
}
-(float)price
{
    return 0;
}
@end
