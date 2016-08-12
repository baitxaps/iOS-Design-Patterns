//
//  SignInfo4Pool.h
//  FlyweightPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "SignInfo.h"

@interface SignInfo4Pool : SignInfo

@property (nonatomic,strong)NSString *key;

- (instancetype)initWithKey:(NSString *)key ;
@end
