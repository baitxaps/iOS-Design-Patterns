//
//  RHCCorp.h
//  CompositePattern
//
//  Created by hairong chen on 16/8/3.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Corp : NSObject

@property(nonatomic,strong)Corp *tParent;

- (instancetype)initWithName:(NSString *)name
                    position:(NSString *)position
                      salary:(NSInteger)salary;

- (NSString *)info;
@end
