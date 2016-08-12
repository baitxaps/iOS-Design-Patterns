//
//  Director.m
//  CreateBuild
//
//  Created by hairong chen on 16/5/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Director.h"
#import "BenzBuiilder.h"
#import "BMWBuilder.h"

@interface Director ()

@property (nonatomic,strong)BMWBuilder *bmwBuilder;
@property (nonatomic,strong)BenzBuiilder *benzBuilder;
@property (nonatomic,strong)NSMutableArray *sequence;

@end

@implementation Director

#pragma mark - 懒加载
@synthesize bmwBuilder =_bmwBuilder;
- (BMWBuilder *)bmwBuilder {
    if (!_bmwBuilder) {
        _bmwBuilder = [BMWBuilder new];
    }
    return _bmwBuilder;
}

@synthesize benzBuilder =_benzBuilder;
- (BenzBuiilder *)benzBuilder {
    if (!_benzBuilder) {
        _benzBuilder = [BenzBuiilder new];
    }
    return _benzBuilder;
}

@synthesize sequence = _sequence;
- (NSMutableArray *)sequence {
    if (!_sequence) {
        _sequence = [NSMutableArray new];
    }
    return _sequence;
}

#pragma mark - 重写setter，getter方法
@synthesize bmwModelX = _bmwModelX;
- (BMWModel *)bmwModelX{
    [self.sequence removeAllObjects];
    
    [self.sequence addObject:@"engine boom"];
    [self.sequence addObject:@"start"];
    [self.sequence addObject:@"stop"];
    
    self.benzBuilder.sequence = self.sequence;
    
    return (BMWModel *)self.bmwBuilder.carmodel;
}

@synthesize benzModelA = _benzModelA;
- (BenZModel *)benzModelA {
    [self.sequence removeAllObjects];
    
    [self.sequence addObject:@"start"];
    [self.sequence addObject:@"stop"];
    
     self.benzBuilder.sequence = self.sequence;
    
    return (BenZModel *)self.benzBuilder.carmodel;
}

@synthesize benzModelB = _benzModelB;
- (BenZModel *)benzModelB {
    [self.sequence removeAllObjects];
    
    [self.sequence addObject:@"alarm"];
    [self.sequence addObject:@"start"];
    [self.sequence addObject:@"stop"];
    
    self.benzBuilder.sequence = self.sequence;
    
    return (BenZModel *)self.benzBuilder.carmodel;
}

@synthesize bmwModelY = _bmwModelY;
- (BMWModel *)bmwModelY {
    [self.sequence removeAllObjects];
    
    [self.sequence addObject:@"start"];
    self.benzBuilder.sequence = self.sequence;
    
    return (BMWModel *)self.bmwBuilder.carmodel;
}



@end
