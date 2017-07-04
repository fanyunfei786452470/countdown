//
//  ViewController.m
//  TheCountdown
//
//  Created by 范云飞 on 2017/6/29.
//  Copyright © 2017年 范云飞. All rights reserved.
//

#import "ViewController.h"
#import "CountDown.h"
@interface ViewController ()
@property (strong, nonatomic) CountDown * button;;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //NSString 转 UInt8
    NSString *str = @"测试转换";
    uint8_t buff_str[1024];
    memcpy(buff_str,[str UTF8String], [str length]+1);
    NSLog(@"char = %s",buff_str);
    
    NSString *str_From_buff = [NSString stringWithCString:(char*)buff_str encoding:NSUTF8StringEncoding];
    NSLog(@"string = %@",str_From_buff);
    
//    CountDown * button = [[CountDown alloc]init];
//    [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//    [self.view addSubview:button];
//    self.button = button;
//    self.button.frame = CGRectMake(100, 100, 150, 30);
//    [self.button buttonClickWithTimer:5 callBack:^(UIButton *button) {
//        // 这里发送请求
//        
//    }];
//}
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
