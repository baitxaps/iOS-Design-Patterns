//
//  Composite.m
//  CompositePattern
//
//  Created by hairong chen on 16/8/3.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Composite.h"
@interface Composite ()

@property (nonatomic,strong)NSMutableArray *componentArrayList;///构件容器

@end

@implementation Composite

- (instancetype)init {
    if (self = [super init]) {
        _componentArrayList = [NSMutableArray new];
    }
    return self;
}


- (void)add:(id<Component>)componet {
    [self.componentArrayList addObject:componet];
}

- (void)remove:(id<Component>)component {
    [self.componentArrayList removeObject:component];
}

- (NSArray *)children {
    return self.componentArrayList;
}

- (void)doSomething {
    NSLog(@"branches and trunk.");
}


@end
