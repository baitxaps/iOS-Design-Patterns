//
//  RHCClass.m
//  RHCProxy
//
//  Created by hairong chen on 16/7/16.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "RHCClass.h"

@interface RHCClass ()
@property (nonatomic,weak)id datas;
@end

@implementation RHCClass

- (void)sameThingDone {
    
    [self.delegate somethingDone];
}


- (void)setupDatas {
    self.datas = [self.dataSource someDatas];
}


@end
