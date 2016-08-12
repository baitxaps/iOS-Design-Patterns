//
//  CarModel.m
//  CreateBuild
//
//  Created by hairong chen on 16/5/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "CarModel.h"

@implementation CarModel

- (void)start{}
- (void)stop{}
- (void)alarm{}
- (void)engineBoom{}

- (void)run {
    for (NSString *tmp in self.sequence) {
        if ([tmp isEqualToString:@"start"]) {
            [self start];
        }else if ([tmp isEqualToString:@"stop"]){
            [self stop];
        }else if ([tmp isEqualToString:@"alarm"]){
            [self alarm];
        }else if ([tmp isEqualToString:@"engine boom"]){
            [self engineBoom];
        }
    }
}

#pragma mark -
#pragma synthesize- setSequence

- (void)setSequence:(NSMutableArray *)sequence {
    _sequence = sequence;
}
@end
