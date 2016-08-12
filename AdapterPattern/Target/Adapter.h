//
//  Adapter.h
//  AdapterPattern
//
//  Created by hairong chen on 16/8/1.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Adaptee.h"
#import "Target.h"

// 适配器角色
@interface Adapter : Adaptee<Target>

@end
