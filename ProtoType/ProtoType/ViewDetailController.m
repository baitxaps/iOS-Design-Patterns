//
//  ViewDetailController.m
//  ProtoType
//
//  Created by hairong chen on 16/5/8.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ViewDetailController.h"
#import "Mail.h"
@interface ViewDetailController ()

@end


@implementation ViewDetailController

- (void)dealloc{
    NSLog(@"%s",__func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *leftItems = [[UIBarButtonItem alloc]initWithTitle:@"<" style:UIBarButtonItemStylePlain target:self action:@selector(backAction)];
    
    self.navigationItem.leftBarButtonItem = leftItems;
    
    Mail *mail = [[Mail alloc]init];
    
    mail.tmpDelete = ^{
        [self mathods];
    };
}
- (void)mathods{

    
   void (^block_)()=  ^{
       NSLog(@"self = %@",self);
   };

    block_();
}





-(void)backAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
