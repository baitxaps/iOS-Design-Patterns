//
//  BeanUtils.h
//  MementoPattern
//
//  Created by hairong chen on 16/8/8.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BeanUtils : NSObject

@property (nonatomic,strong)NSMutableDictionary *hashMap;

- (NSDictionary *)backupProp:(id)object ;
- (void)restoreProp:(id)object hashMap:(NSDictionary *)poroMap;
@end
