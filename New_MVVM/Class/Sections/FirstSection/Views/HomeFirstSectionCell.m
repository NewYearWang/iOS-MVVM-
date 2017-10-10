//
//  HomeFirstSectionCell.m
//  New_MVVM
//
//  Created by 票金所 on 16/4/26.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "HomeFirstSectionCell.h"

@implementation HomeFirstSectionCell

- (void)awakeFromNib {
    // Initialization code
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    ViewBorderRadius(self.backView, 0, 1, [UIColor grayColor]);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
