//
//  SortDecorator.m
//  DecoratorPattern
//
//  Created by hairong chen on 16/7/30.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "SortDecorator.h"

@interface SortDecorator ()
@property (nonatomic,strong)id<Decorator>sr;
@end

@implementation SortDecorator

- (instancetype)initWithDecorator:(id<Decorator>)sr {
    if (self = [super init]) {
        [self sortDecorator:sr];
    }
    return self;
}

- (void)sortDecorator:(id<Decorator>)sr {
    _sr = sr;
}


- (void)report {
    [self reportSort];
    [_sr report];
}

- (void)sign:(NSString *)name {
    [_sr sign:name];
}

#pragma mark - privare mathods
- (void)reportSort {
    NSLog(@"我这次排名第38名");
}


@end
