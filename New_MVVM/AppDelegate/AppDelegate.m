//
//  AppDelegate.m
//  New_MVVM
//
//  Created by 票金所 on 16/4/21.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "AppDelegate.h"

#import "CYLTabBarControllerConfig.h"
#import "LeftSortsViewController.h"
#import "LoginOrRegisterVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 要使用百度地图, 首先先启动BaiduMapManager
    _mapManager = [[BMKMapManager alloc] init];
    // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
    BOOL ret = [_mapManager start:@"MOTyXvAKw1CHwYr030You0I8"  generalDelegate:nil];
    if (!ret) {
        NSLog(@"manager start failed!");
    }
    
#if 0
    // 打印沙盒路径
    NSLog(@"%@", [SandBoxPaths homePath]);
    NSLog(@"%@", [SandBoxPaths documentsPath]);
    NSLog(@"%@", [SandBoxPaths libraryPath]);
    NSLog(@"%@", [SandBoxPaths libraryCachesPath]);
#endif
    
    NSNotificationCenter *rootCenter = [NSNotificationCenter defaultCenter];
    [rootCenter addObserver:self selector:@selector(changeRootVC:) name:@"rootVC" object:nil];
    
    
    LoginOrRegisterVC *vc = [[LoginOrRegisterVC alloc] init];
    self.window.rootViewController = vc;
    
    return YES;
}

- (void)changeRootVC:(NSNotification *)noti {
    [self.window removeAllSubviews];
    
    
    if ([noti.object isEqualToString:@"Home"]) {
        
        
        
        CYLTabBarControllerConfig *tabBarControllerConfig = [[CYLTabBarControllerConfig alloc] init];
        
        LeftSortsViewController *leftVC = [[LeftSortsViewController alloc] init];
        
        LeftSlideViewController *mainVC = [[LeftSlideViewController alloc] initWithLeftView:leftVC andMainView:tabBarControllerConfig.tabBarController];
        self.window.rootViewController = mainVC;
        

    }
    else {
        
    }
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
