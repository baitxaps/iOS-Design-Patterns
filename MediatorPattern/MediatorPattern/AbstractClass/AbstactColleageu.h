//
//  AbstactColleageu.h
//  MediatorPattern
//
//  Created by hairong chen on 16/7/24.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractMediator.h"

@interface AbstactColleageu : NSObject

@property (nonatomic,strong,readonly)AbstractMediator *mediator;

- (instancetype)initWihtMediator:(AbstractMediator *)mediator;

@end
