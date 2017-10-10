//
//  LoginOrRegisterVC.m
//  New_MVVM
//
//  Created by 票金所 on 16/4/28.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "LoginOrRegisterVC.h"
#import <AVFoundation/AVFoundation.h>

#import "LoginViewController.h"
#import "RegisterViewController.h"

@interface LoginOrRegisterVC ()

@property (nonatomic, strong) AVPlayer *player;
@property (nonatomic, strong) AVPlayerLayer *layer;
@property (strong, nonatomic) IBOutlet UIView *alphaView;

@end

@implementation LoginOrRegisterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"1.mp4" withExtension:nil];
    
    self.player = [[AVPlayer alloc] initWithURL:url];
    
    self.layer = [AVPlayerLayer playerLayerWithPlayer:self.player];
    
    self.layer.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    
    [self.view.layer addSublayer:self.layer];
    
    self.layer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    
    [self.layer.player play];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(lll)];
    [self.view addGestureRecognizer:tap];
    
    [self.view addSubview:self.alphaView];
}

- (void)lll {
    NSLog(@"~~~~~~~~~~~~");
}

- (IBAction)login:(UIButton *)sender {
    NSLog(@"login");
    LoginViewController *loginVC = [[LoginViewController alloc] init];
    [self presentViewController:loginVC animated:YES completion:^{
        
    }];
}

- (IBAction)registerAction:(UIButton *)sender {
    NSLog(@"register");
    RegisterViewController *registerVC = [[RegisterViewController alloc] init];
    [self presentViewController:registerVC animated:YES completion:^{
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
