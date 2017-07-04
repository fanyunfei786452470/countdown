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
    
    
    CountDown * button = [[CountDown alloc]init];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.view addSubview:button];
    self.button = button;
    self.button.frame = CGRectMake(100, 100, 150, 30);
    [self.button buttonClickWithTimer:5 callBack:^(UIButton *button) {
        // 这里发送请求
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
