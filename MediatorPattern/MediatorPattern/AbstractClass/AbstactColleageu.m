//
//  AbstactColleageu.m
//  MediatorPattern
//
//  Created by hairong chen on 16/7/24.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import "AbstactColleageu.h"

@interface AbstactColleageu ()
@property (nonatomic,strong)AbstractMediator *mediator;
@end

@implementation AbstactColleageu

- (instancetype)initWihtMediator:(AbstractMediator *)mediator {
    if (self = [super init]) {
        _mediator = mediator;
    }
    return self;
}

@end
