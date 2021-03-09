//
//  NSString+App.h
//  GXLCategory_OC
//
//  Created by 郭小龙 on 2021/3/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (App)

/** 获取app logo 图片*/
+ (NSString *)getLogoImageName;

/** 获取用户坐标 */
+ (NSString *)UserLocationsWith;

/** 去掉字符串空格 */
+ (NSString *)removeStrSpace:(NSString *)str;

/*   手机   */
/** 手机正则表达式 */
+ (BOOL)isValidatePhoneNum:(NSString *)phoneNum;

/** 手机号格式 添加空格 */
+ (NSString *)instStrSpace:(NSString *)phoneNum

/*  密码  */
/** 支付密码正则表达式 */
+ (BOOL)isValidatePayPassword:(NSString *)PayPassword;


@end

NS_ASSUME_NONNULL_END

