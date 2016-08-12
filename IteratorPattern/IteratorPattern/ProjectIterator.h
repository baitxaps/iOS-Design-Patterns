//
//  ProjectIterator.h
//  IteratorPattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IProjectIterator.h"

@interface ProjectIterator : NSObject<IProjectIterator>

- (instancetype)initWithProjectList:(NSMutableArray*)projectList ;

//- (instancetype)initWithProjectList:(NSMutableArray<IProject> *)projectList ;

@end
