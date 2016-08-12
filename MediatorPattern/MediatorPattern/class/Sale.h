//
//  Sale.h
//  MediatorPattern
//
//  Created by hairong.chen on 16/7/20.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstactColleageu.h"

@interface Sale : AbstactColleageu

- (void)sellIBMComputer:(NSInteger)number;
- (NSInteger) getSaleStatus;
- (void)offSale ;

@end
