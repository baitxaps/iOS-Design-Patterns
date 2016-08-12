//
//  Command.h
//  CommandPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RequirementGroup,PageGroup,CodeGroup;

@interface Command : NSObject

@property (nonatomic,strong,readonly)RequirementGroup *rg;
@property (nonatomic,strong,readonly)PageGroup *pg;
@property (nonatomic,strong,readonly)CodeGroup *cg;

- (void)execute;

@end
