//
//  UIColor+CH.h
//  IdealOfFarming
//
//  Created by Chaoooo on 2018/7/31.
//  Copyright © 2018年 Hangzhou Transfar. All rights reserved.
//

#import <UIKit/UIKit.h>

// 取色值相关的方法
#define RGB(r,g,b)          [UIColor colorWithRed:(r)/255.f \
green:(g)/255.f \
blue:(b)/255.f \
alpha:1.f]

#define RGBA(r,g,b,a)       [UIColor colorWithRed:(r)/255.f \
green:(g)/255.f \
blue:(b)/255.f \
alpha:(a)]

@interface UIColor (CH)

// 16进制 0x______
+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;
+ (UIColor *)colorWithHex:(NSInteger)hexValue;

@end
