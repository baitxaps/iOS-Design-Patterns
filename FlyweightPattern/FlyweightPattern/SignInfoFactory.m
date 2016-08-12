//
//  SignInfoFactory.m
//  FlyweightPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "SignInfoFactory.h"
#import "SignInfo.h"
#import "SignInfo4Pool.h"

NSMutableDictionary <NSString *, SignInfo *>  *_pool;

@interface SignInfoFactory ()
//@property (nonatomic,strong)NSMutableDictionary <NSString *, SignInfo *>  *pool;
@end

@implementation SignInfoFactory

// @Deprecated
+ (SignInfo *)signInfo {
    
    return [SignInfo new];
}

+ (SignInfo *)signInfoWithKey:(id)key {
    SignInfo *result = nil;
    
    if (!_pool) _pool = [NSMutableDictionary dictionary];
  
    if (!_pool[key] ) {
        NSLog(@"%@--建立对象，并放置到池中",key);
//      result = [[SignInfo4Pool alloc]initWithKey:key];
        
        result =  [SignInfo new];
        [_pool setObject:result forKey:key];
    
    }else {
        result = _pool[key];
        NSLog(@"%@---直接从池中取得",key);
    }
    return result;
}

@end
