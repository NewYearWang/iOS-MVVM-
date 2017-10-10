//
//  SandBoxPaths.h
//  New_MVVM
//
//  Created by 郭慧彬 on 16/4/27.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SandBoxPaths : NSObject

+ (NSString *)homePath;
//沙盒中Documents路径
+ (NSString *)documentsPath;
//沙盒中libraray路径
+ (NSString *)libraryPath;
//libraryCaches路径
+ (NSString *)libraryCachesPath;
//temp路径
+ (NSString *)tempPath;

@end
