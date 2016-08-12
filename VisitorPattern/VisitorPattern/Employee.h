//
//  Employee.h
//  VisitorPattern
//
//  Created by hairong chen on 16/8/9.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IVisitor.h"

static const int MALE = 0;
static const int FEMALE = 1;

@interface Employee : NSObject

@property (nonatomic,strong)NSString *name;
@property (nonatomic,assign)NSInteger salary;
@property (nonatomic,assign)NSInteger sex;

- (void)accept:(id<IVisitor>)visitor ;
@end
