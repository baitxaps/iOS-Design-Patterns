//
//  main.m
//  FactoryMethodPattern
//
//  Created by hairong chen on 16/7/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CreateHumanFactory.h"
#import "BlackHumanFactory.h"
#import "WhiteHumanFactory.h"
#import "MaleFactory.h"
#import "FemaleFactory.h"
#import "HumanFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 多工厂模式的抽象工厂类,简单的工厂模式场景
//        HumanBase *black= [CreateHumanFactory factoryWithType:FactoryTypeBlack];
//        [black color];
//        [black talk];
//        
//        HumanBase *white= [CreateHumanFactory factoryWithType:FactoryTypeWhite];
//        [white color];
//        [white talk];
//        
//    
//        // 多工厂模式的抽象工厂类,简单的工厂模式场景
//        id <Human>blackHuman= [BlackHumanFactory createHuman];
//        [blackHuman color];
//        [blackHuman talk];
//        
//        id <Human>whiteHuman= [WhiteHumanFactory createHuman];
//        [whiteHuman color];
//        [whiteHuman talk];
        
        //
        id<Human>maleWihteHuman = [MaleFactory createWhiteHuman];
        id<Human>femalWihteHuman = [FemaleFactory createWhiteHuman];
        [maleWihteHuman color];
        [maleWihteHuman talk];
        [maleWihteHuman sex];
        
        [femalWihteHuman color];
        [femalWihteHuman talk];
        [femalWihteHuman sex];
        
        
    }
    return 0;
}
