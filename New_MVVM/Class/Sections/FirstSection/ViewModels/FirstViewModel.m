//
//  FirstViewModel.m
//  New_MVVM
//
//  Created by 票金所 on 16/4/22.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "FirstViewModel.h"
#import "Person.h"

@interface FirstViewModel ()

@property (assign, nonatomic) NSInteger offset;
@end

@implementation FirstViewModel

- (instancetype)init {
    if ([super init]) {
        _offset = 0;
    }
    return self;
}

-(NSMutableArray *)firstArray {
    if(_firstArray == nil) {
        _firstArray = [NSMutableArray array];
    }
    
    return _firstArray;
}

- (void)loadData
{
    NSString *str = @"http://bill.dev.piaojinsuo.com/gettest/test/";
    
    [self NetRequestGETWithRequestURL:str WithParameter:nil WithReturnValeuBlock:^(id returnValue) {
        NSMutableArray *arr = [NSMutableArray array];
        for (NSDictionary *dic in returnValue) {

            Person *person = [Person objectWithKeyValues:dic];
            NSLog(@"%@%@", person.a, person.b);
            [arr addObject:dic];
            [arr addObject:dic];
            [arr addObject:dic];
        }
        
        self.firstArray = arr;
        
        
    } WithErrorCodeBlock:^(id errorCode) {
        
    } WithFailureBlock:^{
        
    }];
}

@end
