//
//  BannerTableViewCell.m
//  New_MVVM
//
//  Created by 郭慧彬 on 16/5/1.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "BannerTableViewCell.h"

@implementation BannerTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
