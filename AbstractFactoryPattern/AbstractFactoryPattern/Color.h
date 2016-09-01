//
//  Color.h
//  AbstractFactoryPattern
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Color <NSObject>
-(void)fill;
@end


@interface Red : NSObject<Color>

@end

@interface Green : NSObject<Color>

@end

@interface Blue : NSObject<Color>

@end