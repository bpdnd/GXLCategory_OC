//
//  NSString+FF.h
//  GXLCategory_OC_Example
//
//  Created by 郭小龙 on 2021/2/23.
//  Copyright © 2021 奔跑de年代. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (FF)
/**判断 是否全部为中文 */
+(BOOL)judgeOnlyChinese:(NSString *) str;

/** 判断全数字 */
+(BOOL)judgeOnlyNumber:(NSString *)str;

/** 判断全字母*/
+(BOOL)judgeonlyLetter:(NSString *)str;

/** 判断仅包含字母或数字 */
+(BOOL)judgeOnlyLetterOrNumber:(NSString *)str;
@end

NS_ASSUME_NONNULL_END
