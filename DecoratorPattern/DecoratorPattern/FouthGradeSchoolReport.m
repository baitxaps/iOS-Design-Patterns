//
//  FourthGradeSchoolReport.m
//  DecoratorPattern
//
//  Created by hairong chen on 16/7/30.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "FouthGradeSchoolReport.h"

@implementation FouthGradeSchoolReport

- (void)report {
    NSLog(@"尊敬的***家长:");
    NSLog(@"---------------------");
    NSLog(@"语文 62  数学 65  体育 98  自然 63");
    NSLog(@"---------------------");
    NSLog(@"家长签名:");
}

- (void)sign:(NSString *)name {
      NSLog(@"家长签名:%@",name);
}

@end
