//
//  ExtrinsicState.h
//  FlyweightPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExtrinsicState : NSObject<NSCopying>

@property (nonatomic,strong)NSString *subject;
@property (nonatomic,strong)NSString *location;

- (BOOL)objEquals:(id)obj;
@end
