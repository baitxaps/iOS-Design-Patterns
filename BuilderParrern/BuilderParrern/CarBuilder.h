//
//  CarBuilder.h
//  CreateBuild
//
//  Created by hairong chen on 16/5/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarModel.h"

@interface CarBuilder : NSObject

@property (nonatomic,strong)NSMutableArray *sequence;

@property (nonatomic,strong)CarModel *carmodel;

@end
