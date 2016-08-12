//
//  KungRuRole.m
//  VisitorPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "KungFuRole.h"
#import "AbsActor.h"

@implementation KungFuRole

- (void)accept:(AbsActor *)actor {
    [actor act:self];
}

@end
