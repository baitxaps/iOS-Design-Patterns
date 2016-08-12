//
//  AbstractHumanFactory.m
//  MethodFactory
//
//  Created by hairong chen on 16/1/1.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "CreateHumanFactory.h"


@implementation CreateHumanFactory
// 多工厂模式的抽象工厂类,简单的工厂模式场景
+(id <Human>)factoryWithType:(FactoryType)factoryType {
    id <Human>factory;
    
    if (factoryType == FactoryTypeBlack) {
        factory = [WhiteHuman new];
    }else if (factoryType==FactoryTypeWhite){
        factory = [BlackHuman new];
    }else{
        factory = nil;
    }
    
    return factory;
}

/*
+(HumanBase *)factoryWithType:(FactoryType)factoryType {
    if (factoryType == FactoryTypeBlack) {
        return [WhiteHuman new];
    }else if (factoryType==FactoryTypeWhite){
        return [BlackHuman new];
    }else{
        return nil;
    }
}
 */
@end
