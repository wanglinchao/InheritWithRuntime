//
//  AddUMMethod.m
//  jhj
//
//  Created by wlc on 2016/12/23.
//  Copyright © 2016年 jhj. All rights reserved.
//

#import "AddUMMethod.h"

@implementation AddUMMethod
+(void)activeAction{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [UIViewController exchangeMethod];
    });
    
}
//交换类方法
+ (void)exchangeClassMethod:(Class)anClass method1Sel:(SEL)method1Sel method2Sel:(SEL)method2Sel {
    Method method1 = class_getClassMethod(anClass, method1Sel);
    Method method2 = class_getClassMethod(anClass, method2Sel);
    method_exchangeImplementations(method1, method2);
}
//交换实例方法
+ (void)exchangeInstanceMethod:(Class)anClass method1Sel:(SEL)method1Sel method2Sel:(SEL)method2Sel {
    Method method1 = class_getInstanceMethod(anClass, method1Sel);
    Method method2 = class_getInstanceMethod(anClass, method2Sel);
    method_exchangeImplementations(method1, method2);
}
@end
