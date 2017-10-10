//
//  BaseViewController.m
//  New_MVVM
//
//  Created by 票金所 on 16/4/21.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self layoutNavigationBar:nil titleColor:[UIColor whiteColor] titleFont:[UIFont systemFontOfSize:17] leftBarButtonItem:nil rightBarButtonItem:nil];
    self.navigationController.navigationBar.barTintColor = MAINCOLOR;
    
    self.view.backgroundColor = BACKGROUND_COLOR;
    
    if (DSystemVersion >= 7.0) {
        self.automaticallyAdjustsScrollViewInsets = NO;
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    
    MyRequest *request = [[MyRequest alloc] init];
    [request AFNetworkStatus];
}



- (UILabel *) setNavigationTitle:(NSString *) aString{
    
    UILabel *aTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 170, 44)];
    aTitle.backgroundColor = [UIColor clearColor];
    [aTitle setText:aString];
    aTitle.textAlignment = NSTextAlignmentCenter;
    aTitle.textColor = [UIColor groupTableViewBackgroundColor];
    aTitle.font = [UIFont boldSystemFontOfSize:15.0];
    return aTitle;
}



- (void)layoutNavigationBar:(UIImage*)backGroundImage
                 titleColor:(UIColor*)titleColor
                  titleFont:(UIFont*)titleFont
          leftBarButtonItem:(UIBarButtonItem*)leftItem
         rightBarButtonItem:(UIBarButtonItem*)rightItem {
    
    if (backGroundImage) {
        [self.navigationController.navigationBar setBackgroundImage:backGroundImage forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    }
    if (titleColor&&titleFont) {
        [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:titleColor,NSFontAttributeName:titleFont}];
    }
    else if (titleFont) {
        [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:titleFont}];
    }
    else if (titleColor){
        [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:titleColor}];
    }
    if (leftItem) {
        self.navigationItem.leftBarButtonItem=leftItem;
    }
    if (rightItem) {
        self.navigationItem.rightBarButtonItem=rightItem;
    }
}

/**
 *  回收键盘
 */
- (void)viewResignFirstResponder {
    [self.view endEditing:YES];
}

// 当键盘弹出挡住textField时
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    CGRect frame = textField.frame;
    frame = [self.view convertRect:frame fromView:textField.superview];
    
    int offset = frame.origin.y + frame.size.height - (self.view.frame.size.height - 216.0 - 20 - textField.frame.size.height);//216:键盘高度    20:键盘/textField间隙
    NSTimeInterval animationDuration = 0.30f;
    [UIView beginAnimations:@"ResizeForKeyboard" context:nil];
    [UIView setAnimationDuration:animationDuration];
    
    //将视图的Y坐标向上移动offset个单位，以使下面腾出地方用于软键盘的显示
    if(offset > 0)
        self.view.frame = CGRectMake(0.0f, -offset, self.view.frame.size.width, self.view.frame.size.height);
    
    [UIView commitAnimations];
}

//输入框编辑完成以后，将视图恢复到原始状态
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    self.view.frame =CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)drawLayerBack:(UIView *)view
                frame:(CGRect)frame;
{
    //初始化渐变层
    CAGradientLayer *gradientLayer = [[CAGradientLayer alloc] init];
    gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = frame;
    [view.layer insertSublayer:gradientLayer atIndex:0];
    
    //设置渐变颜色方向
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(0, 1);
    
    //设定颜色组
    gradientLayer.colors = @[(__bridge id)[UIColor colorWithRed:235 / 255.0 green:225 / 255.0 blue:202 / 255.0 alpha:1].CGColor,
                             (__bridge id)[UIColor colorWithRed:109 / 255.0 green:164 / 255.0 blue:220 / 255.0 alpha:1].CGColor,
                             (__bridge id)[UIColor colorWithRed:238 / 255.0 green:220 / 255.0 blue:132 / 255.0 alpha:1].CGColor,
                             (__bridge id)[UIColor colorWithRed:235 / 255.0 green:161 / 255.0 blue:201 / 255.0 alpha:1].CGColor];
    //设定颜色分割点
    gradientLayer.locations = @[@(0.0f) ,@(0.33f) ,@(0.66f) ,@(1.0f)];
    
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
