//
//  IProjectIterator.h
//  IteratorPattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IProject;
@protocol IProjectIterator <NSObject>

-(BOOL)hasNext ;
-(id<IProject>)next ;
- (void)remove;

@end
