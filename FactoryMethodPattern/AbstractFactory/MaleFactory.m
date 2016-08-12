//
//  MaleFactory.m
//  FactoryMethodPattern
//
//  Created by hairong chen on 16/7/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "MaleFactory.h"

@implementation MaleFactory

+ (id<Human>)createBlackHuman {
    return  [MaleWhiteHuman new];
}


+ (id<Human>)createWhiteHuman {
    return  [FemaleWhiteHuman new];
}

/*
+ (id<Human>)createWhiteHuman {
    return  [MaleWhiteHuman new];
}
*/

@end
