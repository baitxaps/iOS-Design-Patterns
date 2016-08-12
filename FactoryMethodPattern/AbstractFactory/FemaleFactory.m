//
//  FemaleFactory.m
//  FactoryMethodPattern
//
//  Created by hairong chen on 16/7/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "FemaleFactory.h"


@implementation FemaleFactory

+ (id<Human>)createWhiteHuman {
    return  [FemaleWhiteHuman new];
}

+ (id<Human>)createBlackHuman {
    return  [MaleWhiteHuman new];
}
/*
+ (id<Human>)createBlackHuman {
    return  [FemaleBlackHuman new];
}
 */
@end
