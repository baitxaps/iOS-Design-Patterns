//
//  BWMBuilder.m
//  CreateBuild
//
//  Created by hairong chen on 16/5/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "BMWBuilder.h"
#import "BMWModel.h"

@interface BMWBuilder ()

@property (nonatomic,strong)BMWModel *bwm;

@end
@implementation BMWBuilder

-(BMWModel *)bwm {
    if (!_bwm) {
        _bwm = [BMWModel new];
    }
    return _bwm ;
}

- (CarModel *)carmodel {
    return self.bwm;
    
}

- (void)setSequence:(NSMutableArray *)sequence {
    self.bwm.sequence = sequence;
}

@end
