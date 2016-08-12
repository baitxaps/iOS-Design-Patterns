//
//  ILetterProcess.h
//  FacadePattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ILetterProcess <NSObject>

- (void)writeContext:(NSString *)context;
- (void)fillEnvelope:(NSString *)address;
- (void)letterInotoEnvelope;
- (void)sendLetter;

@end
