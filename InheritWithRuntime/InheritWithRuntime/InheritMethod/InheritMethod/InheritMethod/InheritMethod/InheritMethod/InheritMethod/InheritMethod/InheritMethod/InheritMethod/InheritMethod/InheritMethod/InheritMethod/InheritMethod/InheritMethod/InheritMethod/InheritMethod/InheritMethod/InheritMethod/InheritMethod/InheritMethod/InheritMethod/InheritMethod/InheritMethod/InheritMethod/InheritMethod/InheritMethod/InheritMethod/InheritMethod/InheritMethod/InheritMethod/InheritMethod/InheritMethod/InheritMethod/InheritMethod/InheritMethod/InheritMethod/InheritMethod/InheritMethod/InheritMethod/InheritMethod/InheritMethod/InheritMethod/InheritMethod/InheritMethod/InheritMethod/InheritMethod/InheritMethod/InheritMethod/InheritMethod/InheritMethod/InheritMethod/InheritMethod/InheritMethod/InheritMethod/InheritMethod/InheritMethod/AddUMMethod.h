//
//  AddUMMethod.h
//  金惠家
//
//  Created by wlc on 2016/12/23.
//  Copyright © 2016年 金惠家. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIViewController+BaseViewController.h"
#import <objc/runtime.h>
@interface AddUMMethod : NSObject
+(void)activeAction;
//交换类方法
+ (void)exchangeClassMethod:(Class)anClass method1Sel:(SEL)method1Sel method2Sel:(SEL)method2Sel;
//交换实例方法
+ (void)exchangeInstanceMethod:(Class)anClass method1Sel:(SEL)method1Sel method2Sel:(SEL)method2Sel;
@end
