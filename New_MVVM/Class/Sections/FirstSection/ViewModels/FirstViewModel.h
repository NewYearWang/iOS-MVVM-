//
//  FirstViewModel.h
//  New_MVVM
//
//  Created by 票金所 on 16/4/22.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "BaseViewModel.h"

@interface FirstViewModel : BaseViewModel

@property (nonatomic, strong) NSMutableArray *firstArray;

- (void)loadData;

@end
