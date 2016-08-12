//
//  main.m
//  DecoratorPattern
//
//  Created by hairong chen on 16/7/30.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Decorator.h"
#import "SugarFouthGradeSchoolReport.h"
#import "HighScoreDecorator.h"
#import "SortDecorator.h"

#import "ConcreteDecorator1.h"
#import "ConcreteDecorator2.h"
#import "ConcreteComponent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         id<SchoolReport> sr = [[SugarFouthGradeSchoolReport alloc]init];
         [sr report];
         [sr sign:@"rhc"];
         */
        // -------------------------------------------------------------------------
        // 原装成绩单
        id<SchoolReport> sr = [[FouthGradeSchoolReport alloc]init];
        // 加了最高分说明成绩单
        sr = [[HighScoreDecorator alloc]initWithDecorator:(id<Decorator>)sr];
        // 又加了成绩排名的说明
        sr = [[SortDecorator alloc]initWithDecorator:(id<Decorator>)sr];
        // 看成绩单
        [sr report];
        // 然后老爸一看，很开心，就签名了
        [sr sign:@"rhc"];
        
        // -------------------------------------------------------------------------
        id<Component>compoent = [[ConcreteComponent alloc]init];
        // 第一次修饰
        compoent = [[ConcreteDecorator1 alloc]initWithDecorator:compoent];
        // 第二次修饰
        compoent = [[ConcreteDecorator2 alloc]initWithDecorator:compoent];
        // 修饰后运行
        [compoent operate];
        
        // -------------------------------------------------------------------------
        
    }
    return 0;
}
