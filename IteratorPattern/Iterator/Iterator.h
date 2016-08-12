//
//  Iterator.h
//  IteratorPattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

// 抽象迭代器
@protocol Iterator <NSObject>

-(id)next;     // 遍历到下一个元素
-(BOOL)hasNext;// 是否已经遍历到尾部
-(BOOL)remove; // 删除当前指向的元素

@end
