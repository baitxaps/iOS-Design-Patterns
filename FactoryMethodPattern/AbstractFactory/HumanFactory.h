//
//  HumanFactory.h
//  FactoryMethodPattern
//
//  Created by hairong chen on 16/7/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FactoryMehtodHeader.h"

@interface HumanFactory : NSObject

+ (id<Human>)createWhiteHuman;
+ (id<Human>)createBlackHuman;

@end
