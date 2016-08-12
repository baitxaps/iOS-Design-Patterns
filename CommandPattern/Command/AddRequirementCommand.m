//
//  AddRequirementCommand.m
//  CommandPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "AddRequirementCommand.h"
#import "Command.h"
#import "RequirementGroup.h"
#import "PageGroup.h"
#import "CodeGroup.h"

@implementation AddRequirementCommand

- (void)execute {
    [self.rg find];
    [self.rg add ];
    [self.rg plan];
}

@end
