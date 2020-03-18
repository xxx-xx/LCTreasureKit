//
//  UILabel+CH.h
//  IdealOfFarming
//
//  Created by Chaoooo on 2018/8/9.
//  Copyright © 2018年 Hangzhou Transfar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (CH)

/**
 *  改变行间距
 */
+ (void)changeLineSpaceForLabel:(UILabel *)label WithSpace:(float)space;

/**
 *  改变字间距
 */
+ (void)changeWordSpaceForLabel:(UILabel *)label WithSpace:(float)space;

/**
 *  改变行间距和字间距
 */
+ (void)changeSpaceForLabel:(UILabel *)label withLineSpace:(float)lineSpace WordSpace:(float)wordSpace;

@end
