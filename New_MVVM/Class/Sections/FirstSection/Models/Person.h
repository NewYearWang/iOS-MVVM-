//
//  Person.h
//  New_MVVM
//
//  Created by 票金所 on 16/4/22.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "BaseModel.h"

@interface Person : BaseModel <NSCoding>

@property (nonatomic, copy) NSString *a;

@property (nonatomic, copy) NSString *b;

@end
