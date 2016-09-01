//
//  FactoryBuilder.m
//  AbstractFactoryPattern
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import "FactoryBuilder.h"
#import "ShapeFactory.h"
@implementation FactoryBuilder

-(id<AbstractFactory>)createFactoryWithFactoryName:(NSString *)aName
{
    id<AbstractFactory> aFactor = nil;
    if ([aName isEqualToString:@"ShapeFactory"]) {
        aFactor = [ShapeFactory new];
    }
    if ([aName isEqualToString:@"ColorFactory"]) {
        aFactor = [ColorFactory new];
    }
    return aFactor;
}

@end
