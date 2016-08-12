//
//  ObjectStructure.m
//  VisitorPattern
//
//  Created by hairong chen on 16/8/9.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ObjectStructure.h"
#import "ConcreteElement1.h"
#import "ConcreteElement2.h"

@implementation ObjectStructure

+(id<Element>)createElement {
    NSInteger rand = arc4random()%100;
    
    if (rand > 50) {
        return  [ConcreteElement1 new];
    } else {
         return  [ConcreteElement2 new];
    }
}

@end
