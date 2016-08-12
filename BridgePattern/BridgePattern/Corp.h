//
//  Corp.h
//  BridgePattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol Produce;

/*
@protocol Corp <NSObject>

- (void)produce;
- (void)sell;
- (void)makeMoney;

@end
*/

@interface Corp : NSObject //<Corp>

-(instancetype)initWithProduce:(id<Produce>)produces;

- (void)produce;
- (void)sell;
- (void)makeMoney;

@end
