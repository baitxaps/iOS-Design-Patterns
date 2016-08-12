//
//  main.m
//  CreateBuild
//
//  Created by hairong chen on 16/5/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Director.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        Director *director = [Director new];
        
        // 3辆 Ａ类型的奔驰车
        for (NSInteger i = 0; i < 3; i ++) {
            [director.benzModelA run];
        }
        // 2辆 Ｂ类型的奔驰车
        for (NSInteger i = 0; i < 2; i ++) {
            [director.benzModelB run];
        }
        
         // 4辆 Ｂ类型的宝马车
        for (NSInteger i = 0; i < 4; i ++) {
            [director.bmwModelX run];
        }
         // 1辆 Ｂ类型的宝马车
        for (NSInteger i = 0; i < 1; i ++) {
            [director.bmwModelY run];
        }
        
//        NSMutableArray *sequence = [NSMutableArray new];
//        [sequence addObject:@"engine boom"];
//        [sequence addObject:@"alarm"];
//        [sequence addObject:@"start"];
//        [sequence addObject:@"stop"];
//        
//        BenzBuiilder *benzeBuilder = [BenzBuiilder new];
//        benzeBuilder.sequence = sequence;
//        BenZModel *benz = (BenZModel *)benzeBuilder.carmodel;
//        [benz run];
//        
//    
//        BMWBuilder *bwmBuilder = [BMWBuilder new];
//        [sequence exchangeObjectAtIndex:2 withObjectAtIndex:1];
//        bwmBuilder.sequence = sequence  ;
//        BMWModel *bwm = (BMWModel *)bwmBuilder.carmodel;
//        [bwm run];
        
    }
    return 0;
}
