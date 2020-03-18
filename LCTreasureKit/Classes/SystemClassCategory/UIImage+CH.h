//
//  UIImage+CH.h
//  IdealOfFarming
//
//  Created by Chaoooo on 2018/8/2.
//  Copyright © 2018年 Hangzhou Transfar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (CH)

+ (UIImage *)createImageWithColor:(UIColor *)color;

+ (UIImage*)createImageWithColor:(UIColor*)color size:(CGSize)size;

+ (UIImage *)fixOrientation:(UIImage *)aImage;



/**
 获取矩形渐变色的UIImage

 @param bounds 图片bounds
 @param colors 渐变色数组 两种颜色
 @param gradientType 渐变方式 0->从上到下 1->从左到右
 @return 渐变色的图片
 */
+ (UIImage*)gradientImageWithBounds:(CGRect)bounds andColors:(NSArray*)colors andGradientType:(int)gradientType;

+ (UIImage *)getThemeColorImageWithBounds:(CGRect)bounds;

@end
