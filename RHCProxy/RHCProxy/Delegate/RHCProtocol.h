//
//  RHCProtocol.h
//  RHCProxy
//
//  Created by hairong chen on 16/7/16.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RHCDelegate <NSObject>
- (void)somethingDone;
@end

@protocol RHCDataSource <NSObject>
- (id)someDatas;
@end


@protocol IGamePlayer <NSObject>
- (void)loginWtihUser:(NSString *)user password:(NSString *)pwd;

- (void)killBoss;

- (void)upgrade;

// 强制代理
// 找到自己的代理
- (id<IGamePlayer>) getProxy;

@end


@protocol IProxy <NSObject>

- (void)count;

@end