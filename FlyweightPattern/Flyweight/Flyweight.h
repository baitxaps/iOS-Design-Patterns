//
//  Flyweight.h
//  FlyweightPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Flyweight : NSObject
@property (nonatomic,strong)NSString *intrinsic; //内部状态
- (void)operate;
- (instancetype)initWihtExtrinsic:(NSString *)extrinsic;
@end
