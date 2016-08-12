//
//  GamePlayer.m
//  RHCProxy
//
//  Created by hairong.chen on 16/7/19.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "GamePlayer.h"
#import "GamePlayerProxy.h"

@interface GamePlayer ()

@property (nonatomic,strong)NSString *name;
@property (nonatomic,strong)id <IGamePlayer> proxy;

@end

@implementation GamePlayer

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (instancetype)initWithGamePlayer:(id <IGamePlayer>)gamePlayer name:(NSString *)name {
    if (!gamePlayer ) {
        [[NSException exceptionWithName:@"GamePlayer initialize" reason:@"Cannot create real role" userInfo:nil] raise];
    }
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (void)loginWtihUser:(NSString *)user password:(NSString *)pwd {
    
    if (self.isProxy) {
        
        NSLog(@"user =%@ ,pwd = %@ ,%@ login success...",user,pwd,self.name);
    }else {
        NSLog(@"Please ask the agent...");
    }
}

- (void) killBoss {
    if (self.isProxy) {
        NSLog(@"%@ kill Boss",self.name);
    }else {
        NSLog(@"Please ask the agent...");
    }
}

- (void)upgrade {
    if (self.isProxy) {
       NSLog(@"%@ upgrade ",self.name);
    }else {
         NSLog(@"Please ask the agent...");
    }
}

// 强制代理
// 找到自己的代理
- (id<IGamePlayer>) getProxy {
    
    _proxy = [[GamePlayerProxy alloc]initWithGamePlayer:self];
    
    return _proxy;
}


// 检验是否是代理访问 proxy004,其他的 改成默认为YES即可

- (BOOL)isProxy {
    if (self.proxy == nil) {
        return NO;
    }else {
        return YES;
    }
}

@end
