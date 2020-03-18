//
//  NSString+CH.h
//  IdealOfFarming
//
//  Created by Chaoooo on 2018/9/10.
//  Copyright © 2018年 Hangzhou Transfar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CH)

+ (NSString *)dictionaryToJSONString:(NSDictionary *)dictionary;

+ (NSString *)arrayToJSONString:(NSArray *)array;

@end
