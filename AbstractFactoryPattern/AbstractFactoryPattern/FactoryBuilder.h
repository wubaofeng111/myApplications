//
//  FactoryBuilder.h
//  AbstractFactoryPattern
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractFactory.h"
@interface FactoryBuilder : NSObject
-(id<AbstractFactory>)createFactoryWithFactoryName:(NSString*)aName;
@end
