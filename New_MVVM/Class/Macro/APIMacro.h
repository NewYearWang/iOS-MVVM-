//
//  APIMacro.h
//  New_MVVM
//
//  Created by 票金所 on 16/4/21.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifndef APIMacro_h
#define APIMacro_h

//定义返回请求数据的block类型
typedef void (^ReturnValueBlock) (id returnValue);
typedef void (^ErrorCodeBlock) (id errorCode);
typedef void (^FailureBlock)();
typedef void (^NetWorkBlock)(BOOL netConnetState);


#import "AFNetworking.h"
#import "UIKit+AFNetworking.h"
#import "AFHTTPSessionManager.h"
#import "AFURLSessionManager.h"


#define BaseUrl     @"www.baidu.com"

#endif /* APIMacro_h */
