//
//  main.m
//  MementoPattern
//
//  Created by hairong chen on 16/8/6.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boy.h"
#import "Memento.h"
#import "Caretaker.h"
#import "Originator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1
        Boy *boy = [Boy new];
        // 声明出备忘录的管理者
        Caretaker *caretaker = [Caretaker new];
        boy.state = @"心情很棒";
        NSLog(@"======男孩现在的状态======");
        NSLog(@"%@",boy.state);
        // 记录当前的状态
        caretaker.memento = boy.createMemento;
        // 男孩追女孩，状态改变
        [boy changeStatus];
        NSLog(@"======男孩现在的状态后======");
        NSLog(@"%@",boy.state);
        // 追女孩失败，恢复原状
        [boy restoreMemoto:caretaker.memento];
        NSLog(@"======男孩恢复的状态后======");
        NSLog(@"%@",boy.state);
        
        // 2
        // 定义发起人
        Originator *originator = [Originator new];
        Caretaker *taker = [Caretaker new];
        originator.state1 = @"中国";
        originator.state2 = @"强盛";
        originator.state3 = @"繁荣";
        NSLog(@"初始状态是:%@",originator);
        //创建一个备忘录
        [taker setMemento:[originator createMemento]];
        originator.state1 = @"软件";
        originator.state2 = @"架构";
        originator.state3 = @"优秀";
        NSLog(@"修改后状态是:%@",originator);
        // 恢复一个备忘录
        [originator restoreMemoto:taker.memento];
        NSLog(@"恢复后状态是:%@",originator);
        
        
    }
    return 0;
}
