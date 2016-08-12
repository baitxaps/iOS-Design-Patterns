//
//  DeletePageCommand.m
//  CommandPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "DeletePageCommand.h"
#import "RequirementGroup.h"
#import "PageGroup.h"
#import "CodeGroup.h"

@implementation DeletePageCommand

- (void)execute {
    [self.rg find];
    [self.rg deleted ];
    [self.rg plan];
}

@end
