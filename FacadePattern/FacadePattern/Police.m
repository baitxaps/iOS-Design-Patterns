//
//  Police.m
//  FacadePattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Police.h"

@implementation Police

- (void)checkLetter:(id<ILetterProcess>)letterProcess {
    NSLog(@"%@信件已经检查过了...",letterProcess);
}

@end
