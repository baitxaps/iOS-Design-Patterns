//
//  HanFeiZi.h
//  ObserverPattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IHanFeiZi.h"
#import "Observable.h"

@interface HanFeiZi : NSObject<IHanFeiZi,Observable>

@property (nonatomic,assign)BOOL isHavingBreakfast ;
@property (nonatomic,assign)BOOL isHavingFun;

@end
