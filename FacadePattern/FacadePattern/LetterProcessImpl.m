//
//  LetterProcessImpl.m
//  FacadePattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "LetterProcessImpl.h"

@implementation LetterProcessImpl

- (void)writeContext:(NSString *)context {
    NSLog(@"填写信的内容...%@",context);
}

- (void)fillEnvelope:(NSString *)address {
    NSLog(@"填写收件人地址及姓名...%@",address);
}

- (void)letterInotoEnvelope {
    NSLog(@"把信放到信封中...");
}

- (void)sendLetter {
     NSLog(@"邮递信件...");
}

@end
