//
//  AbstractHumanFactory.h
//  FactoryMethodPattern
//
//  Created by hairong chen on 16/7/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"

// 多工厂模式的抽象工厂类,简单的工厂模式场景
@interface AbstractHumanFactory : NSObject

+(id<Human>)createHuman ;

@end
