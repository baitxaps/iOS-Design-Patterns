//
//  main.m
//  FacadePattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModenPostOffice.h"
#import "Facade.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ModenPostOffice *hellRoadPostOffice = [ModenPostOffice new];
        
        NSString *address = @"Happy Road No. 666,God Province,Heaven";
        
        NSString *context = @"Hello,It's me ,do u know who I am? I'm your ...";
        
        [hellRoadPostOffice sendLetter:context address:address];
        
        // 2
        Facade *facade = [Facade new];
        [facade mathodA];
        [facade mathodB];
        [facade mathodC];
        
    }
    return 0;
}
