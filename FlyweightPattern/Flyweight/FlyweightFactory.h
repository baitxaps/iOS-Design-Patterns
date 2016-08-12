//
//  FlyweightFactory.h
//  FlyweightPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Flyweight;

@interface FlyweightFactory : NSObject
+ (Flyweight *)flyweightWithExtrinsic:(NSString *)extrinsic ;
@end
