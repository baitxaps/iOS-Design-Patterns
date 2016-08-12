//
//  AbsActor.h
//  VisitorPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KungFuRole.h"
#import "IdiotRole.h"

@interface AbsActor : NSObject
- (void)act:(id<Role>)role;
@end
