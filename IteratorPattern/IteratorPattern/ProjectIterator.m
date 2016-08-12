//
//  ProjectIterator.m
//  IteratorPattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ProjectIterator.h"

@interface ProjectIterator ()
@property (nonatomic,strong)NSMutableArray *projectList;
@property (nonatomic,assign)NSInteger currentItem;
@end

@implementation ProjectIterator

- (instancetype)initWithProjectList:(NSMutableArray*)projectList {
    if (self = [super init]) {
        _projectList = projectList;
        _currentItem = 0;
    }
    return self;
}

// 判断是否还有元素
-(BOOL)hasNext {
    BOOL b = YES;
    if (_currentItem >= _projectList.count || _projectList[_currentItem]==nil) {
        b = NO;
    }
    return b;
}

// 取下一个值
-(id<IProject>)next {
    return (id<IProject>)self.projectList[_currentItem++];
}

// 删除一个对象
- (void)remove {
    //没有使用到
}


@end
