//
//  UtilsMacro.h
//  New_MVVM
//
//  Created by 票金所 on 16/4/21.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#ifndef UtilsMacro_h
#define UtilsMacro_h


// PNG JPG 图片路径
#define PNGPATH(NAME)           [[NSBundle mainBundle] pathForResource:[NSString stringWithUTF8String:NAME] ofType:@"png"]
#define JPGPATH(NAME)           [[NSBundle mainBundle] pathForResource:[NSString stringWithUTF8String:NAME] ofType:@"jpg"]
#define PATH(NAME, EXT)         [[NSBundle mainBundle] pathForResource:(NAME) ofType:(EXT)]


// 加载图片
#define PNGkImg(NAME)           [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:(NAME) ofType:@"png"]]
#define JPGkImg(NAME)           [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:(NAME) ofType:@"jpg"]]
#define kImg(NAME, EXT)         [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:(NAME) ofType:(EXT)]]
#define V_IMAGE(imgName)        [UIImage imageNamed:imgName]


// 字体大小(常规/粗体)
#define BOLDFONT(FONTSIZE)      [UIFont boldSystemFontOfSize:FONTSIZE]
#define SYSTEMFONT(FONTSIZE)    [UIFont systemFontOfSize:FONTSIZE]
#define FONT(NAME, FONTSIZE)    [UIFont fontWithName:(NAME) size:(FONTSIZE)]
// 微软雅黑
#define YC_YAHEI_FONT(FONTSIZE) [UIFont fontWithName:@"MicrosoftYaHei" size:(FONTSIZE)]
// 英文 和 数字
#define YC_ENGLISH_FONT(FONTSIZE) [UIFont fontWithName:@"Helvetica Light" size:(FONTSIZE)]


// 颜色(RGB)
#define RGBCOLOR(r, g, b)       [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define RGBACOLOR(r, g, b, a)   [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
// rgb颜色转换（16进制->10进制）
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


// 判断字段时候为空的情况
#define IF_NULL_TO_STRING(x) ([(x) isEqual:[NSNull null]]||(x)==nil)? @"":TEXT_STRING(x)
// 转换为字符串
#define TEXT_STRING(x) [NSString stringWithFormat:@"%@",x]


// app版本
#define APPVersion              [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
// app build版本
#define APPBuild                [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]
// 当前版本
#define FSystemVersion          ([[[UIDevice currentDevice] systemVersion] floatValue])
#define DSystemVersion          ([[[UIDevice currentDevice] systemVersion] doubleValue])
#define SSystemVersion          ([[UIDevice currentDevice] systemVersion])


// 沙盒路径
#define PATH_OF_APP_HOME    NSHomeDirectory()
#define PATH_OF_TEMP        NSTemporaryDirectory()
#define PATH_OF_DOCUMENT    [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]


// View 圆角和加边框
#define ViewBorderRadius(View, Radius, Width, Color)\
                                                    \
                                            [View.layer setCornerRadius:(Radius)];\
                                            [View.layer setMasksToBounds:YES];\
                                            [View.layer setBorderWidth:(Width)];\
                                            [View.layer setBorderColor:[Color CGColor]]

// View 圆角
#define ViewRadius(View, Radius)\
                                \
                                [View.layer setCornerRadius:(Radius)];\
                                [View.layer setMasksToBounds:YES]


// UIView - viewWithTag
#define VIEWWITHTAG(_OBJECT, _TAG)\
                                  \
                                  [_OBJECT viewWithTag : _TAG]


// 屏幕尺寸
#define SCREEN_WIDTH        [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT       [UIScreen mainScreen].bounds.size.height






#endif /* UtilsMacro_h */
