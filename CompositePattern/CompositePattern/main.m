//
//  main.m
//  CompositePattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CFunction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL a = test();
        NSLog(@"%d" , a);
        
         // 1
        Branch *ceo = composititeCorpTree();
        NSLog(@"%@",[ceo info]);
         NSLog(@"%@",treeInfo(ceo));
        
        // 2
        // 创建一个根节点
        Composite *root = [Composite new];
        [root doSomething];
        // 创建一个树板构件
        Composite *branch = [Composite new];
        // 创建一个叶子节点
        RHCLeaf *leaf = [RHCLeaf new];
        // 建立整体
        [root add:branch];
        [root add :leaf];
        
        display(root);
        
    }
    return 0;
}
