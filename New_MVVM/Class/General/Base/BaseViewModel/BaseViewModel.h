//
//  BaseViewModel.h
//  New_MVVM
//
//  Created by 票金所 on 16/4/21.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseViewModel : NSObject

@property (nonatomic, copy) ReturnValueBlock returnBlock;
@property (nonatomic, copy) ErrorCodeBlock   errorBlock;
@property (nonatomic, copy) FailureBlock     failureBlock;


#pragma POST请求
- (void) NetRequestPOSTWithRequestURL: (NSString *) requestURLString
                        WithParameter: (NSDictionary *) parameter
                 WithReturnValeuBlock: (ReturnValueBlock) block
                   WithErrorCodeBlock: (ErrorCodeBlock) errorBlock
                     WithFailureBlock: (FailureBlock) failureBlock;

#pragma GET请求
- (void) NetRequestGETWithRequestURL: (NSString *) requestURLString
                       WithParameter: (NSDictionary *) parameter
                WithReturnValeuBlock: (ReturnValueBlock) block
                  WithErrorCodeBlock: (ErrorCodeBlock) errorBlock
                    WithFailureBlock: (FailureBlock) failureBlock;



#pragma 归档
- (void) archiverAndSaveSandBox:(NSObject *)model
                       fileName:(NSString *)fileName;

#pragma 解档





@end
