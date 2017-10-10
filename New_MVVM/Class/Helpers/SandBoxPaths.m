//
//  SandBoxPaths.m
//  New_MVVM
//
//  Created by 郭慧彬 on 16/4/27.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "SandBoxPaths.h"

@implementation SandBoxPaths
//得到沙盒主目录
+ (NSString *)homePath
{
    return  NSHomeDirectory();
}

//得到Documents文件夹目录
+ (NSString *)documentsPath
{
    return NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
}

//得到Library文件夹目录
+ (NSString *)libraryPath
{
    return NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES).firstObject;
}

//得到caches文件夹
+ (NSString *)libraryCachesPath
{
    return NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject;
}

//得到tem文件夹
+ (NSString *)tempPath
{
    return NSTemporaryDirectory();
}

@end
