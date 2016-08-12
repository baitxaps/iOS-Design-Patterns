//
//  RHCLeaf.m
//  CompositePattern
//
//  Created by hairong chen on 16/8/3.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "RHCLeaf.h"

@implementation RHCLeaf

- (void)doSomething {
    NSLog(@"Leaf Node.");
}

- (void)add:(id<Component>)componet {
    
    if (!componet) {
        @throw [NSException exceptionWithName:@"componet is nil" reason:[NSString stringWithFormat:@"%@ Failed to call designated NSArray.", NSStringFromClass([self class])] userInfo:nil];
    }

}

- (void)remove:(id<Component>)component {
//    if (!self.com) {
//        @throw [NSException exceptionWithName:@"componet is nil" reason:[NSString stringWithFormat:@"%@ Failed to call designated NSArray.", NSStringFromClass([self class])] userInfo:nil];
//    }
}

- (NSArray *)children {
    return nil;
}


@end

