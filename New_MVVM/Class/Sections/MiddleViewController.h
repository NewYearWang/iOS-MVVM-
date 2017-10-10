//
//  MiddleViewController.h
//  New_MVVM
//
//  Created by 票金所 on 16/5/11.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <BaiduMapAPI_Map/BMKMapComponent.h>

@interface MiddleViewController : UIViewController<BMKMapViewDelegate>


@property (nonatomic, assign) CGFloat latitude;     // 维度
@property (nonatomic, assign) CGFloat longitude;    // 经度

+ (UIViewController *)getCurrentVC;

@end
