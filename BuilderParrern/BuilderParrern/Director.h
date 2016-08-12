//
//  Director.h
//  CreateBuild
//
//  Created by hairong chen on 16/5/28.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BenZModel.h"
#import "BMWModel.h"

@interface Director : NSObject

@property (nonatomic,strong)BenZModel *benzModelA;
@property (nonatomic,strong)BenZModel *benzModelB;
@property (nonatomic,strong)BMWModel *bmwModelX;
@property (nonatomic,strong)BMWModel *bmwModelY;

@end
