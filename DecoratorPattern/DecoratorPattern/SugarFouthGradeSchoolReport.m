//
//  SugarFouthGradeSchoolReport.m
//  DecoratorPattern
//
//  Created by hairong chen on 16/7/30.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "SugarFouthGradeSchoolReport.h"

@implementation SugarFouthGradeSchoolReport

- (void)reportHighScore {
    NSLog(@"这次考试语文最高是75,数学是78,自然是80");
}

- (void)reportSort {
    NSLog(@"我这次排名第38名");
}

#pragma mark - Override
- (void)report {
    [self reportHighScore];
    [super report];
    [self reportSort];
}

@end
