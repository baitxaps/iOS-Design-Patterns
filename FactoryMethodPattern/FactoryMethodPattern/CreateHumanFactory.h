//
//  AbstractHumanFactory.h
//  MethodFactory
//
//  Created by hairong chen on 16/1/1.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HumanBase.h"
#import "BlackHuman.h"
#import "WhiteHuman.h"

typedef NS_ENUM(NSInteger,FactoryType) {
    FactoryTypeWhite,
    FactoryTypeBlack,
};

@interface CreateHumanFactory : NSObject

+(id <Human>)factoryWithType:(FactoryType)factoryType;

@end
