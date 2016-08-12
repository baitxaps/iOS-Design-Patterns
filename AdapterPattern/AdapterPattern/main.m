//
//  main.m
//  AdapterPattern
//
//  Created by hairong chen on 16/8/1.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfo.h"
#import "OuterUserInfo.h"
#import "ConcreteTarget.h"
#import "Adapter.h"
#import "OuterUserBaseInfo.h"
#import "OuterUserHomeInfo.h"
#import "OuterUserOfficeInfo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 类适配:通过继承进行的适配
        //--------------------------------------------------------------------------------
        // 1.0 信息同一个接口
        id<IUserInfo,IOuterUser>girl = [[OuterUserInfo alloc]init];
        NSLog(@"%@", [girl mobileNumber]);
        // 1.1 信息三个接口
        girl = [[OuterUserInfo alloc]initWithBaseInfo:[OuterUserBaseInfo new] homeInfo:[OuterUserHomeInfo new] officeInof:[OuterUserOfficeInfo new]];
         NSLog(@"%@", [girl mobileNumber]);
        
        
        // 2
        id<Target>target = [[ConcreteTarget alloc]init];
        [target request];
        target = [[Adapter alloc]init];
        [target request];
        
        //--------------------------------------------------------------------------------
        // 对象适配:对象的合成关系，类的关联关系
        
        
 
    }
    return 0;
}
