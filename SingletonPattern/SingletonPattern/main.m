//
//  main.m
//  SingletonPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"
#import "SubSingleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
         NSLog(@"%@", [Singleton sharedInstance]);
        
        /**
         * NSLog(@"%@", [Singleton new]);
           NSLog(@"%@", [SubSingleton sharedInstance]);
         */
    
    }
    return 0;
}
