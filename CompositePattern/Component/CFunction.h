//
//  CFunction.h
//  CompositePattern
//
//  Created by hairong chen on 16/8/3.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Branch.h"
#import "Leaf.h"
#import "Composite.h"
#import "RHCLeaf.h"

BOOL test();
Branch*composititeCorpTree();
NSString *treeInfo(Branch *root);
void display(Composite *root);