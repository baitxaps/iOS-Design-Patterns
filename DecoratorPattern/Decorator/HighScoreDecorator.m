//
//  HighScoreDecorator.m
//  DecoratorPattern
//
//  Created by hairong chen on 16/7/30.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "HighScoreDecorator.h"

@interface HighScoreDecorator ()
@property (nonatomic,strong)id<Decorator>sr;
@end

@implementation HighScoreDecorator

- (instancetype)initWithDecorator:(id<Decorator>)sr {
    if (self = [super init]) {
        [self hightScoreDecorator:sr];
    }
    return self;
}

- (void)hightScoreDecorator:(id<Decorator>)sr {
    _sr = sr;
    
}

- (void)report {
     [self reportHighScore];
    [_sr report];
}

- (void)sign:(NSString *)name {
    [_sr sign:name];
}

// 汇报最高成绩
#pragma mark - privare mathods
- (void)reportHighScore {
    NSLog(@"这次考试语文最高是75,数学是78,自然是80");
}

@end
