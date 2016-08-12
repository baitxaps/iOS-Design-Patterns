//
//  Mediator.m
//  MediatorPattern
//
//  Created by hairong chen on 16/7/24.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import "Mediator.h"
#import "MediatorPatternHeader.h"

@implementation Mediator

- (void)execute:(NSString *)str object:(NSInteger)cobj {
   if ([str isEqualToString:@"purchase.buy"]) {
       [self buyComputer:cobj];
   }else if([str isEqualToString:@"sale.sell"]) {
       [self sellComputer:cobj];
   }else if([str isEqualToString:@"sale.offsell"]) {
       [self offSale];
   } else if ([str isEqualToString:@"stock.clear"]) {
       [self clearStock];
   }
}

- (void)buyComputer:(NSInteger)number {
    NSInteger saleStatus = [super.sale getSaleStatus];
    
    if (saleStatus > 80) {
           NSLog(@"采购IBM电脑:%ld台",number);
          [super.stock increase:number];
    } else {
        NSInteger buyNumber = number / 2; // 折半采购
        NSLog(@"采购IBM电脑:%ld台",buyNumber);
    }
}


- (void)sellComputer:(NSInteger)number {
    
    if([super.stock getStockNumber]< number){
        
        [super.purchase buyIBMcomputer:number];
        
        NSLog(@"%ld",number);
        
        [super.stock decrease:number];
        
    }
}

- (void)offSale {
    NSLog(@"折价销售IBM电脑 %ld 台", [super.stock getStockNumber]);
}


- (void)clearStock {
    // 要求折价销售
    [super.sale offSale];
    
    // 要求采购人员不要采购
    [super.purchase refuseBuyIBM];
    
}

@end
