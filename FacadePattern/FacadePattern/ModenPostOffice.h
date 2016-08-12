//
//  ModenPostOffice.h
//  FacadePattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModenPostOffice : NSObject
- (void)sendLetter:(NSString *)context address:(NSString *)address;

@end
