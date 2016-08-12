//
//  ViewController.m
//  ProtoType
//
//  Created by hairong chen on 16/2/4.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ViewController.h"
#import "Mail.h"
#import "AdvTemplate.h"
#import "ViewDetailController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)dealloc{
    NSLog(@"%s",__func__);
}

- (IBAction)nextAction:(id)sender {
    
    ViewDetailController *vc = [[ViewDetailController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [self presentViewController:nav animated:YES completion:nil];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    int maxCount= 6;
    int i       =0;

    Mail *mail  = [Mail initWithObj:[AdvTemplate new]];
    mail.tail   = @"XX银行版权所有";
  
    
    while (i <maxCount) {
        Mail *cloneMail = mail.copy;
        cloneMail.appellation   = [NSString stringWithFormat:@"%@ 先生（女士）",[self randString:5]];
        cloneMail.receiver      = [NSString stringWithFormat:@"%@@%@%@",[self randString:5],[self randString:8],@".com"];
        [self sendMail:cloneMail];
        i++;
        
    }
}

-(void)sendMail:(Mail *)mail
{
    NSLog(@"标题:%@ \t收件人:%@ \t...发送成功！",mail.subject,mail.receiver );
    NSLog(@"detail:%@,%@",mail.datas,mail.infomation);
}

-(NSString *)randString:(NSInteger)maxLength
{
    NSString *string = @"abcdefghijklnmopqrestuvwxyzABCDEFGHIJKLMNOPQRESTUVWXYZ";
    NSMutableString *sb = [NSMutableString new];
    srand((unsigned)time(NULL));
    for (int i =0; i< maxLength; i++) {
        int rand = arc4random()%maxLength;
        [sb appendString:[string substringWithRange:NSMakeRange(rand, 1)]];
    }
    return sb;
}



@end
