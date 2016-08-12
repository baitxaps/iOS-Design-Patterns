//
//  GamePlayerProxy.h
//  RHCProxy
//
//  Created by hairong.chen on 16/7/19.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RHCProtocol.h"

@interface GamePlayerProxy : NSObject<IGamePlayer,IProxy>

- (instancetype)initWithName:(NSString *)name ;

- (instancetype)initWithGamePlayer:(id <IGamePlayer>)gamePlayer;

@end
