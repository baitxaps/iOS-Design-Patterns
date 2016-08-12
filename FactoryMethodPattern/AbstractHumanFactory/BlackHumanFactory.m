//
//  BlackHumanFactory.m
//  FactoryMethodPattern
//
//  Created by hairong chen on 16/7/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "BlackHumanFactory.h"
#import "BlackHuman.h"

@implementation BlackHumanFactory

+(id<Human>)createHuman {
    
    return [[BlackHuman alloc]init];
}

@end
