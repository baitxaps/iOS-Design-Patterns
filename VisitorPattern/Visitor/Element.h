//
//  Element.h
//  VisitorPattern
//
//  Created by hairong chen on 16/8/9.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RHCIVistor;

@protocol Element <NSObject>

- (void)doSometing;
- (void)accept:(id<RHCIVistor>)visitor;

@end
