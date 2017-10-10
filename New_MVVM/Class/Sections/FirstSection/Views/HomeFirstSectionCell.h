//
//  HomeFirstSectionCell.h
//  New_MVVM
//
//  Created by 票金所 on 16/4/26.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeFirstSectionCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *backView;

@property (strong, nonatomic) IBOutlet UILabel *lb_section;
@property (strong, nonatomic) IBOutlet UILabel *lb_row;

@property (strong, nonatomic) IBOutlet UILabel *lb_firstStr;
@property (strong, nonatomic) IBOutlet UILabel *lb_secondStr;

@end
