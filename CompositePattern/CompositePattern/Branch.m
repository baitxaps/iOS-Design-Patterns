//
//  Branch.m
//  CompositePattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Branch.h"
@interface Branch ()
@property (nonatomic,strong)NSMutableArray *subordinateList;/// 领导下边有哪些下级领导和小兵
@end

@implementation Branch

- (instancetype)initWithName:(NSString *)name position:(NSString *)position
                      salary:(NSInteger)salary {
    if (self = [super initWithName:name position:position salary:salary]) {
        _subordinateList = [NSMutableArray new];
    }
    return self;
}

// 增加一个下属，可能是小头目，也可能是个小兵
- (void)addSubordinate:(Corp *)corp {
    corp.tParent = self; // 设置父节点
    [self.subordinateList addObject:corp];
}

// 我有哪些下属
- (NSArray*)subordinate {
    return self.subordinateList;
}


@end
