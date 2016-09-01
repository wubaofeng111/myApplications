
//
//  Shape.cpp
//  AbstractFactoryPattern
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import "Shape.h"

@implementation Rectangle

-(void)draw
{
    NSLog(@"Rectangle draw");
}

@end


@implementation Circle

-(void)draw
{
    NSLog(@"Circle draw");
}

@end

@implementation Line
-(void)draw
{
    NSLog(@"Line draw");
}
@end
