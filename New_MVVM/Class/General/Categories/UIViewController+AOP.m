//
//  UIViewController+AOP.m
//  New_MVVM
//
//  Created by 票金所 on 16/4/27.
//  Copyright © 2016年 WangXinNian. All rights reserved.
//

#import "UIViewController+AOP.h"

@implementation UIViewController (AOP)

#if 1
+ (void)load {
    // 通过class_getInstanceMethod()函数从当前对象中的method list获取method结构体，如果是类方法就使用class_getClassMethod()函数获取。
    Method fromMethod1 = class_getInstanceMethod([self class], @selector(viewWillAppear:));
    Method toMethod1 = class_getInstanceMethod([self class], @selector(swizzlingViewWillAppear));
    /**
     *  我们在这里使用class_addMethod()函数对Method Swizzling做了一层验证，如果self没有实现被交换的方法，会导致失败。
     *  而且self没有交换的方法实现，但是父类有这个方法，这样就会调用父类的方法，结果就不是我们想要的结果了。
     *  所以我们在这里通过class_addMethod()的验证，如果self实现了这个方法，class_addMethod()函数将会返回NO，我们就可以对其进行交换了。
     */
    if (!class_addMethod([self class], @selector(viewWillAppear:), method_getImplementation(toMethod1), method_getTypeEncoding(toMethod1))) {
        method_exchangeImplementations(fromMethod1, toMethod1);
    }
    
    
    Method fromMethod2 = class_getInstanceMethod([self class], @selector(viewWillDisappear:));
    Method toMethod2 = class_getInstanceMethod([self class], @selector(swizzlingViewWillDisappear));
    /**
     *  我们在这里使用class_addMethod()函数对Method Swizzling做了一层验证，如果self没有实现被交换的方法，会导致失败。
     *  而且self没有交换的方法实现，但是父类有这个方法，这样就会调用父类的方法，结果就不是我们想要的结果了。
     *  所以我们在这里通过class_addMethod()的验证，如果self实现了这个方法，class_addMethod()函数将会返回NO，我们就可以对其进行交换了。
     */
    if (!class_addMethod([self class], @selector(viewWillAppear:), method_getImplementation(toMethod2), method_getTypeEncoding(toMethod2))) {
        method_exchangeImplementations(fromMethod2, toMethod2);
    }
}

// 我们自己实现的方法，也就是和self的viewDidLoad方法进行交换的方法。
- (void)swizzlingViewWillAppear {
    NSString *str = [NSString stringWithFormat:@"%@", self.class];
    // 我们在这里加一个判断，将系统的UIViewController的对象剔除掉
    if(![str containsString:@"UI"]){
//        NSLog(@"~~~~~%@出现~~~~~", self.class);
    }
    [self swizzlingViewWillAppear];
}
#endif

- (void)swizzlingViewWillDisappear {
    NSString *str = [NSString stringWithFormat:@"%@", self.class];
    // 我们在这里加一个判断，将系统的UIViewController的对象剔除掉
    if(![str containsString:@"UI"]){
//        NSLog(@"~~~~~%@消失~~~~~", self.class);
    }
    [self swizzlingViewWillAppear];
}


#if 0
+(void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        // When swizzling a class method, use the following:
        // Class class = object_getClass((id)self);
        //更换方法的IMP
        swizzleMethod(class, @selector(viewDidLoad), @selector(aop_viewDidLoad));
        swizzleMethod(class, @selector(viewDidAppear:), @selector(aop_viewDidAppear:));
        swizzleMethod(class, @selector(viewWillAppear:), @selector(aop_viewWillAppear:));
        swizzleMethod(class, @selector(viewWillDisappear:), @selector(aop_viewWillDisappear:));
    });
}

void swizzleMethod(Class class, SEL originalSelector, SEL swizzledSelector)   {
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    BOOL didAddMethod =
    class_addMethod(class,
                    originalSelector,
                    method_getImplementation(swizzledMethod),
                    method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {
        class_replaceMethod(class,
                            swizzledSelector,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

#endif

@end
