//
//  Stock.m
//  MediatorPattern
//
//  Created by hairong.chen on 16/7/20.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import "Stock.h"
#import "Purchase.h"
#import "Sale.h"
#import "AbstractMediator.h"

@interface Stock()

@property (nonatomic ,assign) NSInteger computerNumber ;

@end

@implementation Stock

- (instancetype)init {
    if (self = [super init]) {
        _computerNumber = 100;
    }
    return self;
}

- (instancetype)initWihtMediator:(AbstractMediator *)media {
    if (self = [super initWihtMediator:media]) {
         _computerNumber = 100;
    }
    return self;
}

- (void)increase:(NSInteger )number {
    _computerNumber += number;

    NSLog(@"库存数量为:%ld", _computerNumber);
}


- (void)decrease:(NSInteger)number {
    _computerNumber -= number;
}


- (NSInteger)getStockNumber {
    return _computerNumber;
}


- (void)clearStock {

    
    NSLog(@"清理存货数量为:%ld",_computerNumber);
    
    [super.mediator execute:@"stock.clear" object:0];
    
    /*
    Purchase *purchase = [Purchase new];

    Sale *sale = [Sale new];
    // 要求折价销售
    [sale offSale];
    
    // 要求采购人员不要采购
    [purchase refuseBuyIBM];
     */
    
}
@end
