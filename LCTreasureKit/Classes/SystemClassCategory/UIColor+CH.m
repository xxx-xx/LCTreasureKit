//
//  UIColor+CH.m
//  IdealOfFarming
//
//  Created by Chaoooo on 2018/7/31.
//  Copyright © 2018年 Hangzhou Transfar. All rights reserved.
//

#import "UIColor+CH.h"

@implementation UIColor (CH)
// 16进制 0x______
+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue
{
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
                           green:((float)((hexValue & 0xFF00) >> 8))/255.0
                            blue:((float)(hexValue & 0xFF))/255.0 alpha:alphaValue];
}

+ (UIColor *)colorWithHex:(NSInteger)hexValue
{
    return [UIColor colorWithHex:hexValue alpha:1.0];
}

@end
