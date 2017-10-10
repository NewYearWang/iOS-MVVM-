//
//  ThirdTableViewCell.m
//  New_MVVM
//
//  Created by 票金所 on 16/5/3.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "ThirdTableViewCell.h"

@implementation ThirdTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    NSInteger num = arc4random() % 10;
    for (NSInteger i = 0; i < num; i++) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 5 + i * 30, SCREEN_WIDTH - 20, 20)];
        label.text = [NSString stringWithFormat:@"%ld", i];
        label.backgroundColor = [UIColor orangeColor];
        [self.contentView addSubview:label];
    }
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
