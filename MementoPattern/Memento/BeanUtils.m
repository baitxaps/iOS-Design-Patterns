//
//  BeanUtils.m
//  MementoPattern
//
//  Created by hairong chen on 16/8/8.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "BeanUtils.h"
#import <objc/runtime.h>
#import "NSArray+Extension.h"

@implementation BeanUtils

- (instancetype)init {
    if (self = [super init]) {
        _hashMap = [NSMutableDictionary dictionary];
    }
    return self;
}


- (NSDictionary *)backupProp:(id)object {
  [_hashMap removeAllObjects];
    
    Class objcClass = [object class];
    unsigned int outCount = 0 ;
    objc_property_t *properties = class_copyPropertyList(objcClass, &outCount);
    for (int i = 0; i < outCount; i++) {
        objc_property_t property = properties[i];
        const char *propertyName = property_getName(property);
        NSString *propertyKey = [NSString stringWithUTF8String:propertyName];
        NSString *propertyValue = [object valueForKey:propertyKey];
        
        if (propertyKey && propertyValue) {
            [_hashMap setObject:propertyValue forKey:propertyKey];
        }
    }
    free(properties);
    
    return _hashMap;
}

- (void)restoreProp:(id)object hashMap:(NSDictionary *)poroMap {
    
    //获取所有属性 ，遍历 给属性赋值
    NSArray *names = [NSArray getProperties:[object class]];
    for (NSString *name in names) {
        //如果字典中的值为空，赋值可能会出问题
        if (poroMap[name] ) {
            [object setValue:poroMap[name] forKey:name];
        }
    }
}


- (void )backupProp1:(Class)cls {
    /*
     // 把当前类封装成字符串
     NSString *strClass = NSStringFromClass([self class]);
     // NSStging 转换成 class
     id ibj = NSClassFromString(strClass);
     */
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList(cls, &outCount);
    for (i = 0; i < outCount; i++) {
        objc_property_t property = properties[i];
        NSString *propName = [NSString stringWithUTF8String:property_getName(property)];
        NSString *propValue = [NSString stringWithUTF8String:property_getAttributes(property)];// 获取属性特性描述字符串
        NSLog(@"propName = %@ propValue=%@", propName, propValue);
    }
    free(properties);
}


@end
