//
//  GamePlayerProxy.m
//  RHCProxy
//
//  Created by hairong.chen on 16/7/19.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "GamePlayerProxy.h"
#import "GamePlayer.h"

@interface GamePlayerProxy()

@property (nonatomic ,strong)id <IGamePlayer>gamePlayer;

@end

@implementation GamePlayerProxy

- (instancetype)initWithGamePlayer:(id <IGamePlayer>)gamePlayer {
    if (self = [super init]) {
        _gamePlayer = gamePlayer;
    }
    return self;
}


- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        @try {
            _gamePlayer = [[GamePlayer alloc]initWithGamePlayer:self name:name];
        }
        @catch (NSException *exception) {
            NSLog(@"exception.name = %@,exception.reason = %@", exception.name,exception.reason);
        }
    }
    return self;
}


- (void)loginWtihUser:(NSString *)user password:(NSString *)pwd {
//  NSLog(@"user =%@ ,pwd = %@ login success...",user,pwd);
    
    [self.gamePlayer loginWtihUser:user password:pwd];
}

- (void)killBoss {
    
    [self.gamePlayer killBoss];

}

- (void)upgrade {

    [self.gamePlayer upgrade];
    
    [self count];
}


// 代理的代理暂时还没有，就是自己
- (id<IGamePlayer>)getProxy {
    
    return self;
}


// 计算费用
- (void)count {
    NSLog(@"升级费用:100元");
}

@end
