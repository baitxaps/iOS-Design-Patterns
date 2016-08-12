//
//  RHCCorp.m
//  CompositePattern
//
//  Created by hairong chen on 16/8/3.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Corp.h"

@interface Corp ()

@property (nonatomic,strong)NSString *name;   
@property (nonatomic,strong)NSString *position;
@property (nonatomic,assign)NSInteger salary;

@end

@implementation Corp

- (instancetype)initWithName:(NSString *)name position:(NSString *)position
                      salary:(NSInteger)salary {
    if (self = [super init]) {
        _name = name;
        _position = position;
        _salary = salary;
    }
    return self;
}


- (NSString *)info {
    NSString *mg = [NSString stringWithFormat:@"姓名:%@\t职位:%@\t薪水:%ld",_name,_position,_salary];
    
    return mg;
}

- (void)setTParent:(Corp *)tParent {
    _tParent = tParent;
}

- (Corp *)parent {
    return  _tParent;
}

@end
