//
//  SecondViewTableViewCell.m
//  New_MVVM
//
//  Created by 郭慧彬 on 16/4/26.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "SecondViewTableViewCell.h"

@implementation SecondViewTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
//    UIImageView *ima = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
////    [ima zy_cornerRadiusAdvance:25 rectCornerType:UIRectCornerAllCorners];
//    ima.layer.masksToBounds = YES;
//    ima.layer.cornerRadius = 25;
//    ima.image = [UIImage imageNamed:@"TabBarItemSelectedBackground"];
//    [self.contentView addSubview:ima];
    
//    for (NSInteger i = 0; i < SCREEN_WIDTH / 50 - 1; i++) {
//        for (NSInteger j = 0; j < 4; j++) {
//            UIImageView *ima = [[UIImageView alloc] initWithFrame:CGRectMake( 15 + i * 50, 20 + j * 50, 50, 50)];
//            //    [ima zy_cornerRadiusAdvance:25 rectCornerType:UIRectCornerAllCorners];
//            ima.layer.masksToBounds = YES;
//            ima.layer.cornerRadius = 25;
//            if (j == 0) {
//                ima.image = [UIImage imageNamed:@"160840259.jpg"];
//            }
//            else {
//                ima.image = [UIImage imageNamed:@"160840259.jpg"];
//            }
//            [self.contentView addSubview:ima];
//        }
//    }
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
