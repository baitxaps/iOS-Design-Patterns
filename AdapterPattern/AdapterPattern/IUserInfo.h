//
//  IUserInfo.h
//  AdapterPattern
//
//  Created by hairong chen on 16/8/1.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IUserInfo <NSObject>

- (NSString *)userName;

- (NSString *)homeAddress;

- (NSString *)mobileNumber;

- (NSString *)officeTelNumber;

- (NSString *)homeTelNumber;

- (NSString *)jobPositon;

@end
