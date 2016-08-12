//
//  Enum.h
//  ChainOfResponsibilityPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#ifndef Enum_h
#define Enum_h

typedef NS_ENUM(NSInteger ,HandlerLevel) {
    HandlerLevelFatherRequest   =1,
    HandlerLevelHusbandRequest  =2,
    HandlerLevelSonRequest      =3
};

#endif /* Enum_h */
