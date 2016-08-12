//
//  ConcreteElement2.m
//  VisitorPattern
//
//  Created by hairong chen on 16/8/9.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ConcreteElement2.h"
#import "RHCIVistor.h"

@implementation ConcreteElement2

- (void)doSometing {
    // 业务处理
     NSLog(@"%s",__func__);
}

- (void)accept:(id<RHCIVistor>)visitor {    
//    
//    [self performSelectorOnMainThread:@selector(RefreshCellForLiveId:)
//                           withObject:self
//                        waitUntilDone:YES];
    
    [visitor visit:self];
}

- (void)RefreshCellForLiveId:(id)obj {
    sleep(5);
}

@end
