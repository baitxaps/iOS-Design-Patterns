//
//  IHandler.h
//  ChainOfResponsibilityPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Women.h"
#import "Enum.h"

@interface IHandler : NSObject

@property (nonatomic,assign)NSInteger level;
@property (nonatomic,strong)IHandler *nextHandler;

- (instancetype)initWihtLevel:(NSInteger)level ;
- (void)handleMessage:(IWomen *)women;
- (void)setNext:(IHandler *)handler;

@end
