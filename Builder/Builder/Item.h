//
//  Item.h
//  Builder
//
//  Created by friday on 16/9/1.
//  Copyright © 2016年 friday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Packing.h"
@protocol Item <NSObject>
-(NSString*)name;
-(id<Packing>)packing;
-(float)price;
@end
