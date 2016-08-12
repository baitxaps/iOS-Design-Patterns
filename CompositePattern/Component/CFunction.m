//
//  CFunction.m
//  CompositePattern
//
//  Created by hairong chen on 16/8/3.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "CFunction.h"

BOOL test(){
    @try{
        // 因为finally块中包含了return语句，
        // 所以下面的return语句失去作用
        return YES;
    }
    @finally{
        return NO;
    }
}

Branch*composititeCorpTree() {
    // 首先产生总经理CEO
    Branch *root = [[Branch alloc]initWithName:@"王大麻子" position:@"总经理" salary:100000];
    
    // 把三个部门经理产生出来
    Branch *developDep = [[Branch alloc]initWithName:@"刘大瘸子" position:@"研发部门经理" salary:10000];
    Branch *salesDep = [[Branch alloc]initWithName:@"马二拐子" position:@"销售部门经理" salary:20000];
    Branch *financeDep = [[Branch alloc]initWithName:@"赵三驼子" position:@"财务部经理" salary:30000];
    
    // 再把三个小组长产生出来
    Branch *firstDevGroup = [[Branch alloc]initWithName:@"杨三乜斜" position:@"开发一组组长" salary:5000];
    Branch *secondDevGroup = [[Branch alloc]initWithName:@"吴大棒槌" position:@"开发二组组长" salary:6000];
    
    // 把所有的小兵都产生出来
    Leaf *a = [[Leaf alloc]initWithName:@"a" positon:@"开发人员" salary:2000];
    Leaf *b = [[Leaf alloc]initWithName:@"b" positon:@"开发人员" salary:2000];
    Leaf *c = [[Leaf alloc]initWithName:@"c" positon:@"开发人员" salary:2000];
    Leaf *d = [[Leaf alloc]initWithName:@"e" positon:@"开发人员" salary:2000];
    Leaf *e = [[Leaf alloc]initWithName:@"e" positon:@"开发人员" salary:2000];
    Leaf *f = [[Leaf alloc]initWithName:@"f" positon:@"开发人员" salary:2000];
    Leaf *g = [[Leaf alloc]initWithName:@"g" positon:@"销售人员" salary:5000];
    Leaf *h = [[Leaf alloc]initWithName:@"h" positon:@"财务人员" salary:4000];
    Leaf *i = [[Leaf alloc]initWithName:@"i" positon:@"CEO秘书" salary:8000];
    Leaf *rhc = [[Leaf alloc]initWithName:@"rhc" positon:@"研发部副经理" salary:20000];
    
    // 开始组装
    //CEO下有三个部门经理和一个秘书
    [root addSubordinate:i];
    [root addSubordinate:developDep];
    [root addSubordinate:salesDep];
    [root addSubordinate:financeDep];
    
    // 研发部经理
    [developDep addSubordinate:rhc];
    [developDep addSubordinate:firstDevGroup];
    [developDep addSubordinate:secondDevGroup];
    
    // 看看开发两个开发小组下有什么
    [firstDevGroup addSubordinate:a];
    [firstDevGroup addSubordinate:b];
    [firstDevGroup addSubordinate:c];
    [secondDevGroup addSubordinate:d];
    [secondDevGroup addSubordinate:e];
    [secondDevGroup addSubordinate:f];
    
    // 再看销售部下的人员情况
    [salesDep addSubordinate:g];
    
    // 最后一个财务
    [financeDep addSubordinate:h];
    
    return root;
}

NSString *treeInfo(Branch *root){
    NSArray * subordinateList = [root subordinate];
    NSString *info = @"";
    for (Corp *s in subordinateList) {
        if ([s isKindOfClass:[Leaf class]]){
            info = [NSString stringWithFormat:@"%@%@\n",info,[s info]];
        }else {
            info = [NSString stringWithFormat:@"%@%@\n%@",info,[s info],treeInfo((Branch*)s)];
        }
    }
    return info;
}

void display(Composite *root) {
    for (id<Component>c in [root children]) {
        if ([c isKindOfClass:[RHCLeaf class]]) {
            [c doSomething];
        }else {
            display(c);
        }
    }
}
