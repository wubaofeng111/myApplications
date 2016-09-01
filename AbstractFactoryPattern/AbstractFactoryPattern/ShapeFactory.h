//
//  ShapeFactory.h
//  AbstractFactoryPattern
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractFactory.h"
@interface ShapeFactory : NSObject<AbstractFactory>


@end

@interface ColorFactory : NSObject<AbstractFactory>

@end