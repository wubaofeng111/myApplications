//
//  AbstractFactory.h
//  AbstractFactoryPattern
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
#import "Color.h"
@protocol AbstractFactory <NSObject>
-(id<Shape>)getShapeWithShapeName:(NSString*)shapeName;
-(id<Color>)getColorWithColorName:(NSString*)colorName;
@end
