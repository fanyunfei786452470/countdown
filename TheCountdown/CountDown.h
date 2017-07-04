//
//  CountDown.h
//  TheCountdown
//
//  Created by 范云飞 on 2017/6/29.
//  Copyright © 2017年 范云飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountDown : UIButton
- (void)buttonClickWithTimer:(NSTimeInterval)second callBack:(void(^)(UIButton *button))block;

@end
