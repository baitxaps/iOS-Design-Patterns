//
//  main.m
//  RHCProxy
//
//  Created by hairong chen on 16/7/16.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RHCClass.h"
#import "RHCImplementClass.h"

#import "RHCBridgeAClass.h"
#import "RHCBridegBCalss.h"

#import "GamePlayer.h"
#import "GamePlayerProxy.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // proxy
        RHCClass *rhc = [RHCClass new];
        RHCImplementClass *impl = [RHCImplementClass new];
        rhc.delegate = impl;
        rhc.dataSource = impl;
        
        // proxy04.png
        id<IGamePlayer>player = [[GamePlayer alloc]initWithName:@"RHC"];
        id<IGamePlayer>proxy = [player getProxy];
        [proxy loginWtihUser:@"rhc" password:@"pwd"];
        [proxy killBoss];
        [proxy upgrade];
        
        
        // proxy03.png
        /*
        id<IGamePlayer>proxy = [[GamePlayerProxy alloc]initWithName:@"RHC"];
        [proxy loginWtihUser:@"rhc" password:@"pwd"];
        [proxy killBoss];
        [proxy upgrade];
         */
        
        // proxy02.png
        /*
        id<IGamePlayer>player = [[GamePlayer alloc]initWithName:@"RHC"];
        id<IGamePlayer>proxy = [[GamePlayerProxy alloc]initWithGamePlayer:player];
        [proxy loginWtihUser:@"rhc" password:@"pwd"];
        [proxy killBoss];
        [proxy upgrade];
         */
        
//        [player loginWtihUser:@"rhc" password:@"pwd"];
//        [player killBoss];
//        [player upgrade];
        
        // brideg pattern
        RHCBridgeAClass *bridgeA = [RHCBridgeAClass new];
        RHCBridegBCalss *bridgeB = [RHCBridegBCalss new];
        
        id <RHCDelegate> aClass = bridgeA;
        [aClass somethingDone];
        
        id <RHCDelegate> bClass = bridgeB;
        [bClass somethingDone];
        
    }
    return 0;
}
