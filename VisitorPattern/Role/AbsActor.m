//
//  AbsActor.m
//  VisitorPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "AbsActor.h"

@implementation AbsActor

- (void)act:(id<Role>)role {
    if ([role isKindOfClass:[KungFuRole class]]) {
         NSLog(@"演员可以扮演功能角色");
    }else if([role isKindOfClass:[IdiotRole class]]){
        NSLog(@"演员可以扮演任何角色");
    }
}


@end
