//
//  Target.h
//  AdapterPattern
//
//  Created by hairong chen on 16/8/1.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Target <NSObject>
//  目标角色有自己的方法
- (void)request;

@end
