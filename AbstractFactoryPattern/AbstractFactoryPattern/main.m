//
//  main.m
//  AbstractFactoryPattern
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FactoryBuilder.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FactoryBuilder *builder = [[FactoryBuilder alloc]init];
        id<AbstractFactory> aFactory = [builder createFactoryWithFactoryName:@"ShapeFactory"];
        id<Shape> aShape = [aFactory getShapeWithShapeName:@"Circle"];
        [aShape draw];
        NSLog(@"Hello, World!");
    }
    return 0;
}
