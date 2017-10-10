//
//  MiddleViewController.m
//  New_MVVM
//
//  Created by 票金所 on 16/5/11.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "MiddleViewController.h"

@interface MiddleViewController () <BMKMapViewDelegate>

@property (nonatomic, strong) BMKMapView *mapView;
@property (nonatomic, strong) UIButton *backBtn;

@property (nonatomic, strong) UIButton *changeMapTypeBtn;
@property (nonatomic, strong) UIButton *mapHeatBtn;
@property (nonatomic, strong) UIButton *currentRoad;
@property (nonatomic, strong) UIButton *showMap;

@end

@implementation MiddleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createView];
    
    self.latitude = 39.915;
    self.longitude = 116.404;
    
    [self addAnnot];
    [self addLine];
    
}

- (void)addAnnot {
    BMKPointAnnotation *annotation = [[BMKPointAnnotation alloc] init];
    CLLocationCoordinate2D coor;
    coor.latitude = self.latitude;
    coor.longitude = self.longitude;
    annotation.coordinate = coor;
    annotation.title = @"您的位置";
    [_mapView addAnnotation:annotation];
}
/**
 *  协议方法
 *
 *  @param mapView    所要添加大头针的地图
 *  @param annotation 大头针
 *
 *  @return 
 */
- (BMKAnnotationView *)mapView:(BMKMapView *)mapView viewForAnnotation:(id <BMKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[BMKPointAnnotation class]]) {
        BMKPinAnnotationView *newAnnotationView = [[BMKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"myAnnotation"];
        newAnnotationView.pinColor = BMKPinAnnotationColorPurple;
        newAnnotationView.animatesDrop = YES;// 设置该标注点动画显示
        return newAnnotationView;
    }
    return nil;
}



- (void)addLine {
    CLLocationCoordinate2D coors[3] = {0};
    coors[0].latitude = 39.315;
    coors[0].longitude = 116.304;
    coors[1].latitude = 39.515;
    coors[1].longitude = 116.504;
    coors[2].latitude = 39.315;
    coors[2].longitude = 116.504;
    BMKPolyline *polyline = [BMKPolyline polylineWithCoordinates:coors count:3];
    [_mapView addOverlay:polyline];
}
/**
 *  添加折线协议方法
 *
 *  @param mapView 所要添加折线的地图
 *  @param overlay 线
 *
 *  @return
 */
- (BMKOverlayView *)mapView:(BMKMapView *)mapView viewForOverlay:(id <BMKOverlay>)overlay{
    if ([overlay isKindOfClass:[BMKPolyline class]]){
        BMKPolylineView* polylineView = [[BMKPolylineView alloc] initWithOverlay:overlay];
        polylineView.strokeColor = [[UIColor purpleColor] colorWithAlphaComponent:1];
        polylineView.lineWidth = 5.0;
        
        return polylineView;
    }
    return nil;
}

- (void)createView {
    self.view = self.mapView;
    
    UIView *naviBackView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 64)];;
    naviBackView.backgroundColor = MAINCOLOR;
    [self.view addSubview:naviBackView];
    
    [self.backBtn setImage:[UIImage imageNamed:@"backImage"] forState:UIControlStateNormal];
    
    [self.changeMapTypeBtn setImage:[UIImage imageNamed:@"backImage"] forState:UIControlStateNormal];
    [self.mapHeatBtn setImage:[UIImage imageNamed:@"backImage"] forState:UIControlStateNormal];
    [self.currentRoad setImage:[UIImage imageNamed:@"backImage"] forState:UIControlStateNormal];
    [self.showMap setImage:[UIImage imageNamed:@"backImage"] forState:UIControlStateNormal];
    
    
}


/**
 *  懒加载地图视图
 *
 *  @return 地图视图
 */
- (BMKMapView *)mapView {
    if (!_mapView) {
        // 初始化地图
        _mapView = [[BMKMapView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        _mapView.delegate = self;
        // 设置地图样式
        _mapView.mapType = BMKMapTypeStandard;
        // 设置实时路况
        [_mapView setTrafficEnabled:YES];
        
    }
    return _mapView;
}


/**
 *  懒加载返回按钮
 *
 *  @return 返回按钮
 */
- (UIButton *)backBtn {
    if (!_backBtn) {
        
        self.backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.backBtn.frame = CGRectMake(20, 27, 30, 30);
        [self.backBtn addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.backBtn];
    }
    return _backBtn;
}

/**
 *  切换地图类型按钮
 *
 *  @return 返回按钮
 */
- (UIButton *)changeMapTypeBtn {
    if (!_changeMapTypeBtn) {
        
        self.changeMapTypeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.changeMapTypeBtn.frame = CGRectMake(SCREEN_WIDTH - 30 - 20, 100, 30, 30);
        self.changeMapTypeBtn.backgroundColor = RGBACOLOR(255, 255, 255, 0.8);
        [self.changeMapTypeBtn addTarget:self action:@selector(changeMapType) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.changeMapTypeBtn];
    }
    return _changeMapTypeBtn;
}

/**
 *  开启实时路况
 *
 *  @return 返回按钮
 */
- (UIButton *)currentRoad {
    if (!_currentRoad) {
        
        self.currentRoad = [UIButton buttonWithType:UIButtonTypeCustom];
        self.currentRoad.frame = CGRectMake(SCREEN_WIDTH - 30 - 20, 150, 30, 30);
        self.currentRoad.backgroundColor = RGBACOLOR(255, 255, 255, 0.8);
        [self.currentRoad addTarget:self action:@selector(openRoad) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.currentRoad];
    }
    return _currentRoad;
}

/**
 *  开启热力图
 *
 *  @return 返回按钮
 */
- (UIButton *)mapHeatBtn {
    if (!_mapHeatBtn) {
        
        self.mapHeatBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.mapHeatBtn.frame = CGRectMake(SCREEN_WIDTH - 30 - 20, 200, 30, 30);
        self.mapHeatBtn.backgroundColor = RGBACOLOR(255, 255, 255, 0.8);
        [self.mapHeatBtn addTarget:self action:@selector(openHeatMap) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.mapHeatBtn];
    }
    return _mapHeatBtn;
}


/**
 *  底图标注
 *
 *  @return 返回按钮
 */
- (UIButton *)showMap {
    if (!_showMap) {
        
        self.showMap = [UIButton buttonWithType:UIButtonTypeCustom];
        self.showMap.frame = CGRectMake(SCREEN_WIDTH - 30 - 20, 250, 30, 30);
        self.showMap.backgroundColor = RGBACOLOR(255, 255, 255, 0.8);
        [self.showMap addTarget:self action:@selector(showMapOrNo) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.showMap];
    }
    return _showMap;
}




- (void)changeMapType {
    if (_mapView.mapType == BMKMapTypeSatellite) {
        [_mapView setMapType:BMKMapTypeStandard];
    }
    else {
        [_mapView setMapType:BMKMapTypeSatellite];
    }
}

- (void)openRoad {
    if (_mapView.trafficEnabled == YES) {
        _mapView.trafficEnabled = NO;
    }
    else {
        _mapView.trafficEnabled = YES;
    }
}

- (void)openHeatMap {
    if (_mapView.baiduHeatMapEnabled == YES) {
        _mapView.baiduHeatMapEnabled = NO;
    }
    else {
        _mapView.baiduHeatMapEnabled = YES;
    }
}

- (void)showMapOrNo {
    if (_mapView.showMapPoi == YES) {
        _mapView.showMapPoi = NO;
    }
    else {
        _mapView.showMapPoi = YES;
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [self.mapView viewWillAppear];
    self.mapView.delegate = self;
}

- (void)viewWillDisappear:(BOOL)animated {
    [self.mapView viewWillDisappear];
    self.mapView.delegate = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (UIViewController *)getCurrentVC
{
    UIViewController *result = nil;
    UIWindow * window        = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal) {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows) {
            if (tmpWin.windowLevel == UIWindowLevelNormal) {
                window = tmpWin;
                break;
            }
        }
    }
    
    UIView *frontView = [[window subviews] objectAtIndex:0];
    id nextResponder  = [frontView nextResponder];
    
    if ([nextResponder isKindOfClass:[UIViewController class]])
        result = nextResponder;
    else
        result = window.rootViewController;
    
    return result;
}

- (void)backAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
