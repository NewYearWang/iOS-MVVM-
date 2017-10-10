//
//  NSObject+Extension.h
//  New_MVVM
//
//  Created by 郭慧彬 on 16/4/27.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Extension)

- (NSArray *)ignoredNames;

- (void)encode:(NSCoder *)aCoder;

- (void)decode:(NSCoder *)aDecoder; 

@end
