//
//  RHCIVistor.h
//  VisitorPattern
//
//  Created by hairong chen on 16/8/9.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Element.h"

@protocol RHCIVistor <NSObject>

- (void)visit:(id<Element>)element;

@end
