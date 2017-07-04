//
//  CountDown.m
//  TheCountdown
//
//  Created by 范云飞 on 2017/6/29.
//  Copyright © 2017年 范云飞. All rights reserved.
//

#import "CountDown.h"

@interface CountDown ()

@property (nonatomic, copy)void(^block)(UIButton *button);
@property (nonatomic, weak) NSTimer *timer;
@property (nonatomic, assign) int second;
@property (nonatomic, assign) int totalSecond;

@end

@implementation CountDown

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    [super willMoveToSuperview:newSuperview];
//    self.layer.borderWidth = 1.0f;
//    self.layer.cornerRadius = 5;
    [self setTitle:@"获取验证码" forState:UIControlStateNormal];
}


- (void)buttonClickWithTimer:(NSTimeInterval)second callBack:(void(^)(UIButton *button))block
{
    _second = second;
    _totalSecond = second;
    _block = [block copy];
    [self addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)click:(UIButton *)button
{
    button.enabled = NO;
    [self setTitle:[NSString stringWithFormat:@"%zd秒后重新发送", _totalSecond] forState:UIControlStateDisabled];
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(code) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
    _block(button);
}

- (void)code
{
    [self setTitle:[NSString stringWithFormat:@"%zd秒后重新发送", --_second] forState:UIControlStateDisabled];
    if (_second <= 0) {
        if ([_timer isValid]) {
            [_timer invalidate];
            _second = _totalSecond;
            _timer = nil;
            self.enabled = YES;
        }
    }
}

@end
