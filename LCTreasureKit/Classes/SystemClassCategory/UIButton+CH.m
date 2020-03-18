//
//  UIButton+CH.m
//  IdealOfFarming
//
//  Created by Chaoooo on 2018/7/31.
//  Copyright © 2018年 Hangzhou Transfar. All rights reserved.
//

#import "UIButton+CH.h"
#import <objc/runtime.h>

static const char Btn_ImgViewStyle_Key;
static const char Btn_ImgSize_key;
static const char Btn_ImgSpace_key;

@implementation UIButton (CH)

- (void)setImageViewStyle:(ButtonImgViewStyle)style imageSize:(CGSize)size space:(CGFloat)space
{
    objc_setAssociatedObject(self, &Btn_ImgViewStyle_Key, @(style), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &Btn_ImgSpace_key, @(space), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &Btn_ImgSize_key, NSStringFromCGSize(size), OBJC_ASSOCIATION_COPY_NONATOMIC);
}


+ (void)load
{
    Method m1 = class_getInstanceMethod([self class], @selector(layoutSubviews));
    Method m2 = class_getInstanceMethod([self class], @selector(layoutSubviews1));
    method_exchangeImplementations(m1, m2);
}

- (void)layoutSubviews1
{
    [self layoutSubviews1];
    
    NSNumber *typeNum = objc_getAssociatedObject(self, &Btn_ImgViewStyle_Key);
    if (typeNum) {
        NSNumber *spaceNum = objc_getAssociatedObject(self, &Btn_ImgSpace_key);
        NSString *imgSizeStr = objc_getAssociatedObject(self, &Btn_ImgSize_key);
        CGSize imgSize = self.currentImage ? CGSizeFromString(imgSizeStr) : CGSizeZero;
        CGSize labelSize = self.currentTitle.length ? [self.currentTitle sizeWithAttributes:@{NSFontAttributeName:self.titleLabel.font}] : CGSizeZero;
        
        CGFloat space = (labelSize.width && self.currentImage) ? spaceNum.floatValue : 0;
        
        CGFloat width = self.frame.size.width;
        CGFloat height = self.frame.size.height;
        
        CGFloat imgX, imgY, labelX, labelY;
        
        switch (typeNum.integerValue) {
            case ButtonImgViewStyleLeft:
            {
                imgX = (width - imgSize.width - labelSize.width - space)/2.0;
                imgY = (height - imgSize.height)/2.0;
                labelX = imgX + imgSize.width + space;
                labelY = (height - labelSize.height)/2.0;
                self.imageView.contentMode = UIViewContentModeRight;
                break;
            }
            case ButtonImgViewStyleTop:
            {
                imgX = (width - imgSize.width)/2.0;
                imgY = (height - imgSize.height - space - labelSize.height)/2.0;
                labelX = (width - labelSize.width)/2;
                labelY = imgY + imgSize.height + space;
                self.imageView.contentMode = UIViewContentModeBottom;
                break;
            }
            case ButtonImgViewStyleRight:
            {
                labelX = (width - imgSize.width - labelSize.width - space)/2.0;
                labelY = (height - labelSize.height)/2.0;
                imgX = labelX + labelSize.width + space;
                imgY = (height - imgSize.height)/2.0;
                self.imageView.contentMode = UIViewContentModeLeft;
                break;
            }
            case ButtonImgViewStyleBottom:
            {
                labelX = (width - labelSize.width)/2.0;
                labelY = (height - labelSize.height - imgSize.height -space)/2.0;
                imgX = (width - imgSize.width)/2.0;
                imgY = labelY + labelSize.height + space;
                self.imageView.contentMode = UIViewContentModeTop;
                break;
            }
            default:
                labelX = 0;
                labelY = 0;
                imgX = 0;
                imgY = 0;
                break;
        }
        self.imageView.frame = CGRectMake(imgX, imgY, imgSize.width, imgSize.height);
        self.titleLabel.frame = CGRectMake(labelX, labelY, labelSize.width, labelSize.height);
    }
}


//- (CGFloat)titleWidth
//{
//    NSDictionary *dic = @{NSFontAttributeName:self.titleLabel.font};  //指定字号
//    CGRect rect = [self.titleLabel.text boundingRectWithSize:CGSizeMake(0, self.frame.size.height)/*计算宽度时要确定高度*/ options:NSStringDrawingUsesLineFragmentOrigin |
//                   NSStringDrawingUsesFontLeading attributes:dic context:nil];
//    return rect.size.width + 14;
//}

@end
