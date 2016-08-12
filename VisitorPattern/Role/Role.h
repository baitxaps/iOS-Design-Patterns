//
//  Role.h
//  VisitorPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "AbsActor.h"

@class AbsActor;
@protocol Role <NSObject>

- (void)accept:(AbsActor *)actor;

@end
