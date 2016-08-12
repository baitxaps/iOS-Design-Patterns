//
//  Decorator.h
//  DecoratorPattern
//
//  Created by hairong chen on 16/7/30.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SchoolReport.h"

@protocol Decorator <NSObject,SchoolReport>

- (void)report;
- (void)sign:(NSString *)name;

@end
