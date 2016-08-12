//
//  Women.m
//  ChainOfResponsibilityPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Women.h"
#import "Enum.h"

@interface Women()
@property (nonatomic,assign)NSInteger type;
@property (nonatomic,strong)NSString *request;
@end

@implementation Women

- (instancetype)initWithType:(NSInteger)type request:(NSString *)request {
    if (self = [super init]) {
        _type = type;

        switch (_type) {
            case HandlerLevelFatherRequest:
               _request = [NSString stringWithFormat:@"女儿的请求是:%@", request];
                break;
            case HandlerLevelHusbandRequest:
                  _request = [NSString stringWithFormat:@"妻子的请求是:%@", request];
                break;
            case HandlerLevelSonRequest:
                  _request = [NSString stringWithFormat:@"母亲的请求是:%@", request];
                break;
                
            default:
                break;
        }
    }
    return self;
}

- (NSInteger)type {
    return _type;
}

- (NSString *)request {
    return _request;
}

@end
