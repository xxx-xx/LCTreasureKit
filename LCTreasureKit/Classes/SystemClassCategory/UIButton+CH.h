//
//  UIButton+CH.h
//  IdealOfFarming
//
//  Created by Chaoooo on 2018/7/31.
//  Copyright © 2018年 Hangzhou Transfar. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    ButtonImgViewStyleTop,
    ButtonImgViewStyleLeft,
    ButtonImgViewStyleBottom,
    ButtonImgViewStyleRight,
} ButtonImgViewStyle;

@interface UIButton (CH)

/**
 设置 按钮 图片所在的位子
 
 @param style 图片位置类型（上、左、下、右）
 @param size 图片的大小
 @param space 图片和文字的间距
 */
- (void)setImageViewStyle:(ButtonImgViewStyle)style imageSize:(CGSize)size space:(CGFloat)space;

////按钮文字的宽度
//@property (nonatomic, assign) CGFloat titleWidth;

@end
