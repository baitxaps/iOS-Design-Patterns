//
//  SignInfo.h
//  FlyweightPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SignInfo : NSObject
@property (nonatomic,strong)NSString *rId;
@property (nonatomic,strong)NSString *location;
@property (nonatomic,strong)NSString *subject;
@property (nonatomic,strong)NSString *postAddress;
@end
