//
//  HomeInfoTableViewCell.m
//  New_MVVM
//
//  Created by 票金所 on 16/5/5.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "HomeInfoTableViewCell.h"

@implementation HomeInfoTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
