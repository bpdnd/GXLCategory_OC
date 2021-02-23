//
//  NSString+FF.m
//  GXLCategory_OC_Example
//
//  Created by 郭小龙 on 2021/2/23.
//  Copyright © 2021 奔跑de年代. All rights reserved.
//

#import "NSString+FF.h"

@implementation NSString (FF)

+ (BOOL)judgeOnlyChinese:(NSString *)str{
    if (str.length == 0) {
        return  NO;
    }
    
    NSString*regex =@"[\u4e00-\u9fa5]+";

    NSPredicate*pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];

    return [pred evaluateWithObject:str];

}

+ (BOOL)judgeOnlyNumber:(NSString *)str{
    if (str.length == 0) {
        return NO;
    }
    NSString*regex =@"[0-9]*";

    NSPredicate*pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];

    return [pred evaluateWithObject:str];

}

+ (BOOL)judgeonlyLetter:(NSString *)str{
    if (str.length == 0) {
        return NO;
    }
    
    NSString*regex =@"[a-zA-Z]*";

    NSPredicate*pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];

    return [pred evaluateWithObject:str];
    
}

+ (BOOL)judgeOnlyLetterOrNumber:(NSString *)str{
    if (str.length == 0) {
        return NO;
    }
    
    NSString*regex =@"[a-zA-Z0-9]*";

    NSPredicate*pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];

    return [pred evaluateWithObject:str];

}
@end
