//
//  main.m
//  FactoryPattern
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//
//简单工厂模式
#import <Foundation/Foundation.h>
/**
 *  虚基类
 */
@interface Shape : NSObject

-(void)draw;

@end
@implementation Shape



@end
//图形2
@interface Rectangle : Shape


@end

@implementation Rectangle

-(void)draw
{
    NSLog(@"Rectangle Draw");
}

@end
//图形1

@interface Circle : Shape

@end

@implementation Circle

-(void)draw
{
    NSLog(@"Circle Draw");
}

@end

// 工厂
@interface ShapeFactor : NSObject

-(Shape*)createShapeWithShapeName:(NSString*)shapeName;

@end

@implementation ShapeFactor

-(Shape*)createShapeWithShapeName:(NSString *)shapeName
{
    Shape *shape = nil;
    if ([shapeName isEqualToString:@"Rectangle"]) {
        shape = [Rectangle new];
    }
    if([shapeName isEqualToString:@"Circle"])
    {
        shape = [Circle new];
    }
    return shape;
    
}

@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ShapeFactor *factor = [[ShapeFactor alloc]init];
        
        Shape *shape = [factor createShapeWithShapeName:@"Circle"];
        [shape draw];
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
