//
//  Project.h
//  IteratorPattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IProject.h"


@interface Project : NSObject<IProject>

- (instancetype)initWithName:(NSString *)name num:(NSInteger)num cost:(NSInteger)cost;

@end
