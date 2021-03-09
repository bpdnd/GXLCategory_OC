//
//  NSString+App.m
//  GXLCategory_OC
//
//  Created by 郭小龙 on 2021/3/9.
//

#import "NSString+App.h"
#import <CoreLocation/CoreLocation.h>

@implementation NSString (App)

#pragma mark - 获取app logo 图片
+ (NSString *)getLogoImageName{
    NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
    //获取app中所有icon名字数组
    NSArray *iconsArr = infoDict[@"CFBundleIcons"][@"CFBundlePrimaryIcon"][@"CFBundleIconFiles"];
    //取最后一个icon的名字
    NSString *iconLastName = [iconsArr lastObject];
    return iconLastName;
}

#pragma mark - 获取用户坐标
+ (NSString *)UserLocationsWith {
    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
    [locationManager requestWhenInUseAuthorization];
    //经度
    CGFloat longitude = [locationManager.location coordinate].longitude;
    //纬度
    CGFloat latitude = [locationManager.location coordinate].latitude;
    NSString *userLocations = [NSString stringWithFormat:@"%lf|%lf",longitude,latitude];
    return userLocations;
}

/** 手机正则表达式 */
+ (BOOL)isValidatePhoneNum:(NSString *)phoneNum{
    NSString *MOBILE = @"^1([3456789][0-9])[0-9]{8}$";
    NSPredicate *regexTestMobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",MOBILE];
    if ([regexTestMobile evaluateWithObject:phoneNum]) {
        return YES;
    }else {
        return NO;
    }
}

/** 手机号格式 添加空格 */
+ (NSString *)instStrSpace:(NSString *)phoneNum {
    NSMutableString *str = [[NSMutableString alloc] initWithString:phoneNum];
    [str insertString:@" "  atIndex:3];
    [str insertString:@" "  atIndex:7];
    NSString *str1 = [[NSString alloc] initWithString:str];
    return str1;
}

/** 支付密码正则表达式 */
+ (BOOL)isValidatePayPassword:(NSString *)PayPassword{
    NSString *MOBILE = @"^[0-9]{6}";
    NSPredicate *regexTestMobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",MOBILE];
    if ([regexTestMobile evaluateWithObject:PayPassword]) {
        return YES;
    }else {
        return NO;
    }
}

/** 去掉字符串空格 */
+ (NSString *)removeStrSpace:(NSString *)str {
    NSString *one = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
    return one;
}
@end
