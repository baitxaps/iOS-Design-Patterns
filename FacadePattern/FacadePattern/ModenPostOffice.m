//
//  ModenPostOffice.m
//  FacadePattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ModenPostOffice.h"
#import "ILetterProcess.h"
#import "LetterProcessImpl.h"
#import "Police.h"

@interface ModenPostOffice ()
@property (nonatomic,strong)id<ILetterProcess>letterProcess;
@property (nonatomic,strong)Police *letterPoice;
@end

@implementation ModenPostOffice

- (instancetype)init {
    if (self = [super init]) {
        _letterProcess = [LetterProcessImpl new];
        _letterPoice = [Police new];
    }
    return self;
}

- (void)sendLetter:(NSString *)context address:(NSString *)address {
    [_letterProcess writeContext:context];
    [_letterPoice checkLetter:_letterProcess];
    [_letterProcess fillEnvelope:address];
    [_letterProcess letterInotoEnvelope];
    [_letterProcess sendLetter];
}

@end
