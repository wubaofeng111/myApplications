//
//  ShapeFactory.m
//  AbstractFactoryPattern
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import "ShapeFactory.h"

@implementation ShapeFactory
-(id<Shape>)getShapeWithShapeName:(NSString *)shapeName
{
    id<Shape> aShape = nil;
    if ([shapeName isEqualToString:@"Rectangle"]) {
        aShape = [Rectangle new];
    }
    if ([shapeName isEqualToString:@"Circle"]) {
        aShape = [Circle new];
    }
    if ([shapeName isEqualToString:@"Line"]) {
        aShape = [Line new];
    }
    return aShape;
}
-(id<Color>)getColorWithColorName:(NSString *)colorName
{
    return nil;
}
@end

@implementation ColorFactory

-(id<Color>)getColorWithColorName:(NSString *)colorName
{
    id<Color> aColor = nil;
    if ([colorName isEqualToString:@"Red"]) {
        aColor = [Red new];
    }
    if ([colorName isEqualToString:@"Green"]) {
        aColor = [Green new];
    }
    if ([colorName isEqualToString:@"Blue"]) {
        aColor = [Blue new];
    }
    return aColor;
}

@end