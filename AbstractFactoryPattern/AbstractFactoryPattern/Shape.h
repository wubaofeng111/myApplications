//
//  Shape.h
//  AbstractFactoryPattern
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Shape <NSObject>
-(void)draw;
@end





















@interface Rectangle : NSObject <Shape>


@end

@interface Circle : NSObject <Shape>


@end

@interface Line : NSObject <Shape>


@end