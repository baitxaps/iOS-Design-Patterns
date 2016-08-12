//
//  BenzBuiilder.m
//  CreateBuild
//
//  Created by hairong chen on 16/5/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "BenzBuiilder.h"
@interface BenzBuiilder()
@property (nonatomic,strong)BenZModel *benz;
@end

@implementation BenzBuiilder


- (BenZModel *)benz {
    if (!_benz) {
        _benz = [[BenZModel alloc]init];
    }
    return _benz;
}

- (CarModel *)carmodel {
    return self.benz;
}

#pragma mark - sequence

- (void)setSequence:(NSMutableArray *)sequence {
    self.benz.sequence = sequence;
}
@end
