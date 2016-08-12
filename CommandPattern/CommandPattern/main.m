//
//  main.m
//  CommandPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Invoker.h"
#import "AddRequirementCommand.h"
#import "DeletePageCommand.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 首先声明调用者Invoker
        Invoker *rhc = [[Invoker alloc]init];
        // 定义接收者(RequiremnetGroup,PageGroup,CodeGroup）,定义一个发送给接收者的命令
        Command *add = [[AddRequirementCommand alloc]init];
        // 把命令交给调用者去执行
        rhc.command = add;
        [rhc action];
       /*
        Command *deleted = [[DeletePageCommand alloc]init];
        rhc.command = deleted;
        [rhc action];
        */
    }
    return 0;
}
