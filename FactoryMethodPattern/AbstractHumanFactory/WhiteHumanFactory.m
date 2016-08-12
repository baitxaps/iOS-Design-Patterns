//
//  WhiteHumanFactory.m
//  FactoryMethodPattern
//
//  Created by hairong chen on 16/7/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "WhiteHumanFactory.h"
#import "WhiteHuman.h"

@implementation WhiteHumanFactory

+(id<Human>)createHuman {
    
    return [[WhiteHuman alloc]init];
}

@end
