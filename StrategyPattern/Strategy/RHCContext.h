//
//  RHCContext.h
//  StrategyPattern
//
//  Created by hairong chen on 16/7/31.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Strategy.h"

@interface RHCContext : NSObject

- (instancetype)initWithStrategy:(id<Strategy>)strategy ;

- (void)doAnything ;


@end
