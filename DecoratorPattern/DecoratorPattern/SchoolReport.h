//
//  SchoolReport.h
//  DecoratorPattern
//
//  Created by hairong chen on 16/7/30.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SchoolReport <NSObject>

- (void)report;
- (void)sign:(NSString *)name;

@end
