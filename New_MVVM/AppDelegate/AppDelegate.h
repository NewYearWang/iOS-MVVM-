//
//  AppDelegate.h
//  New_MVVM
//
//  Created by 票金所 on 16/4/21.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LeftSlideViewController.h"

//引入base相关所有的头文件
#import <BaiduMapAPI_Base/BMKBaseComponent.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) LeftSlideViewController *leftVC;

@property (nonatomic, strong) BMKMapManager *mapManager;


@end

