//
//  AbstractMediator.h
//  MediatorPattern
//
//  Created by hairong.chen on 16/7/22.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Purchase,Sale,Stock;

@interface AbstractMediator : NSObject

@property (nonatomic ,strong,readonly) Purchase *purchase;
@property (nonatomic ,strong,readonly) Sale *sale;
@property (nonatomic ,strong,readonly) Stock *stock;

- (void)execute:(NSString *)str object:(NSInteger)cobj;
@end
