//
//  Color.cpp
//  AbstractFactoryPattern
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import "Color.h"

@implementation Red
-(void)fill
{
    NSLog(@"Red Fill");
}
@end

@implementation Green
-(void)fill
{
    NSLog(@"Green Fill");
}
@end

@implementation Blue 
-(void)fill
{
    NSLog(@"Blue Fill");
}
@end
