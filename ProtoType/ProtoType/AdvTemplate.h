//
//  AdvTemplate.h
//  ProtoType
//
//  Created by hairong chen on 16/2/4.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdvTemplate : NSObject<NSCopying>
@property(nonatomic,strong)NSString *advSubject;
@property(nonatomic,strong)NSString *advContext;

- (instancetype)init;
+ (instancetype)init;
@end
