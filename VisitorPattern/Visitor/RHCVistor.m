//
//  RHCVistor.m
//  VisitorPattern
//
//  Created by hairong chen on 16/8/9.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "RHCVistor.h"

@implementation RHCVistor

- (void)visit:(id<Element>)element {
    [element doSometing];
}

@end
