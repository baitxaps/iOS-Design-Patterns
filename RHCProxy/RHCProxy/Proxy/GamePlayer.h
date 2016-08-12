//
//  GamePlayer.h
//  RHCProxy
//
//  Created by hairong.chen on 16/7/19.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RHCProtocol.h"

@interface GamePlayer : NSObject<IGamePlayer>

- (instancetype)initWithName:(NSString *)name;

- (instancetype)initWithGamePlayer:(id <IGamePlayer>)gamePlayer name:(NSString *)name;
@end
