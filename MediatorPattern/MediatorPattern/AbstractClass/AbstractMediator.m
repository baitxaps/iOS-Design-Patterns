//
//  AbstractMediator.m
//  MediatorPattern
//
//  Created by hairong.chen on 16/7/22.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import "AbstractMediator.h"
#import "MediatorPatternHeader.h"

@interface AbstractMediator()

@property (nonatomic ,strong) Purchase *purchase;
@property (nonatomic ,strong) Sale *sale;
@property (nonatomic ,strong) Stock *stock;

@end

@implementation AbstractMediator

- (instancetype)init {
    if (self = [super init]) {
        _purchase = [[Purchase alloc]init];
        _sale = [[Sale alloc]init];
        _stock = [[Stock alloc]init];
    }
    return self;
}

- (void)execute:(NSString *)str object:(NSInteger)cobj {

}

@end
