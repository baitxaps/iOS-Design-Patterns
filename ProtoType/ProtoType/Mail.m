//
//  Mail.m
//  ProtoType
//
//  Created by hairong chen on 16/2/4.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Mail.h"

@implementation Mail

- (instancetype)initWithObj:(AdvTemplate *)obj
{
    if (self = [super init]) {
        self.contxt  = obj.advContext;
        self.subject = obj.advSubject;
        self.infomation = @{@"obj":obj};
        self.datas = @[obj];
    }
    return self;
}

- (void)callBack{
    if (self.tmpDelete) {
        self.tmpDelete();
    }
}

+ (instancetype)initWithObj:(AdvTemplate *)obj
{
    return [[self alloc] initWithObj:obj];
}

- (id)copyWithZone:(NSZone *)zone
{
    Mail *copy          = [[self class] allocWithZone:zone];
    copy.contxt         = self.contxt;
    copy.subject        = self.subject;
    copy.appellation    = self.appellation;
    copy.tail           = self.tail;
    copy.receiver       = self.receiver;
    
    copy.datas          = \
    [[[self.datas class]alloc]initWithArray:self.datas copyItems:YES];
    copy.infomation     = \
    [[[self.infomation class]alloc]initWithDictionary:self.infomation copyItems:YES];
    
    return copy;
}



@end
