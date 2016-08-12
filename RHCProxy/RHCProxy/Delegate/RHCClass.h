//
//  RHCClass.h
//  RHCProxy
//
//  Created by hairong chen on 16/7/16.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RHCProtocol.h"

@interface RHCClass : NSObject

@property (nonatomic,weak) id <RHCDelegate> delegate;
@property (nonatomic,weak) id <RHCDataSource>dataSource;
@end
