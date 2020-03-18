//
//  NSString+CH.m
//  IdealOfFarming
//
//  Created by Chaoooo on 2018/9/10.
//  Copyright © 2018年 Hangzhou Transfar. All rights reserved.
//

#import "NSString+CH.h"

@implementation NSString (CH)

+ (NSString *)dictionaryToJSONString:(NSDictionary *)dictionary
{
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary options:NSJSONWritingPrettyPrinted error:&error];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSString *jsonTemp = [jsonString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSCharacterSet *doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"（#%-*+=_）\\|~(＜＞$%^&*)_+ "];
    NSString *jsonTemp2 = [[jsonTemp componentsSeparatedByCharactersInSet:doNotWant] componentsJoinedByString:@""];
    NSString *jsonResult = [jsonTemp2 stringByReplacingOccurrencesOfString:@" " withString:@""];
    return jsonResult;
}

+ (NSString *)arrayToJSONString:(NSArray *)array
{
    NSError *error = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:&error];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSString *jsonTemp = [jsonString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSCharacterSet *doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"（#%-*+=_）\\|~(＜＞$%^&*)_+ "];
    NSString *jsonTemp2 = [[jsonTemp componentsSeparatedByCharactersInSet:doNotWant] componentsJoinedByString:@""];
    NSString *jsonResult = [jsonTemp2 stringByReplacingOccurrencesOfString:@" " withString:@""];
    return jsonResult;
}

@end
