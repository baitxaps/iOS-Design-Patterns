//
//  Women.h
//  ChainOfResponsibilityPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "IWomen.h"

@interface Women : IWomen
- (instancetype)initWithType:(NSInteger)type request:(NSString *)request;
@end
