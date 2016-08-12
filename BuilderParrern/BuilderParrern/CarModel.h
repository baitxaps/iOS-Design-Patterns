//
//  CarModel.h
//  CreateBuild
//
//  Created by hairong chen on 16/5/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarModel : NSObject

@property (nonatomic,strong)NSMutableArray *sequence;

- (void)start;
- (void)stop;
- (void)alarm;
- (void)engineBoom;

- (void)run;

@end
