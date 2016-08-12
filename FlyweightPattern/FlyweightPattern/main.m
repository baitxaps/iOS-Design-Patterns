//
//  main.m
//  FlyweightPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.


#import <Foundation/Foundation.h>
#import "SignInfoFactory.h"
#import "SignInfo.h"
#import "ExtrinsicState.h"

void  exec(id key) {
    NSTimeInterval time = [[NSDate date] timeIntervalSince1970];
    for (int i = 0; i < 1000; i ++) {
        [SignInfoFactory signInfoWithKey:key];
    }
    NSTimeInterval tailTime = [[NSDate date] timeIntervalSince1970];
    NSLog(@"执行时间:%f ms",tailTime- time);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1
        for (int i = 0; i < 4; i ++) {
            NSString *subject = [NSString stringWithFormat:@"科目%d",i];

            for (int j = 0; j < 30; j++) {
                NSString *key = [NSString stringWithFormat:@"%@考试地点%d",subject,j];
                [SignInfoFactory signInfoWithKey:key];
            }
        }
        SignInfo *signInfo =  [SignInfoFactory signInfoWithKey:@"科目1考试地点1"];
        NSLog(@"%@",signInfo);
        
        // 2 ExtrinsicState 作为外部对象
        ExtrinsicState *state1 = [ExtrinsicState new];
        state1.subject = @"科目1";
        state1.location = @"上海";
        [SignInfoFactory signInfoWithKey:state1];
        
        ExtrinsicState *state2 = [ExtrinsicState new];
        state1.subject = @"科目1";
        state1.location = @"上海";
        [SignInfoFactory signInfoWithKey:state2];
        exec(state2);
        
        // 3 NSString 作为外部对象
        NSString *k1  = @"科目1上海";
        NSString *k2  = @"科目1上海";
        [SignInfoFactory signInfoWithKey:k1];
        
        exec(k2);
        
    }
    return 0;
    
}
