//
//  LoginViewController.m
//  New_MVVM
//
//  Created by 票金所 on 16/4/28.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "LoginViewController.h"

#import "LeftSortsViewController.h"
#import "LeftSlideViewController.h"

@interface LoginViewController ()

@property (strong, nonatomic) IBOutlet UIScrollView *backScrollView;

@property (strong, nonatomic) LeftSlideViewController *leftVC;

@property (strong, nonatomic) IBOutlet UIImageView *userImage;

@property (strong, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UIView *view2;
@property (strong, nonatomic) IBOutlet UIView *view3;

@property (strong, nonatomic) IBOutlet UITextField *tf_userName;
@property (strong, nonatomic) IBOutlet UITextField *tf_passWord;
@property (strong, nonatomic) IBOutlet UITextField *tf_numKey;

@property (strong, nonatomic) IBOutlet UIImageView *keyIage;

@end



@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    ViewBorderRadius(self.userImage, (SCREEN_WIDTH - 260) / 2, 2, [UIColor grayColor]);
    
    
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"UserName"] && ![[[NSUserDefaults standardUserDefaults] objectForKey:@"UserName"] isEqualToString:@""]) {
        self.tf_userName.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"UserName"];
    }
    
    UITapGestureRecognizer *resignGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewResignFirstResponder)];
    [self.backScrollView addGestureRecognizer:resignGesture];
    
    [self drawLayerBack:self.view frame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

/**
 *  登录方法
 *
 *  @param sender 登录按钮
 */
- (IBAction)loginAction:(UIButton *)sender {
    
    // 本地存储用户名
    [[NSUserDefaults standardUserDefaults] setObject:self.tf_userName.text forKey:@"UserName"];
    
    // 发送通知: 切换跟视图
    [[NSNotificationCenter defaultCenter] postNotificationName:@"rootVC" object:@"Home"];
    
}

/**
 *  QQ登录
 *
 *  @param sender QQ按钮
 */
- (IBAction)loginQQAction:(UIButton *)sender {
}

/**
 *  新浪登录
 *
 *  @param sender 新浪按钮
 */
- (IBAction)loginSinaAction:(UIButton *)sender {
}

/**
 *  微信登录
 *
 *  @param sender 微信按钮
 */
- (IBAction)loginWeChat:(UIButton *)sender {
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
