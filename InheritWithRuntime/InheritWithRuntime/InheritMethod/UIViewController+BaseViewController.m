//
//  UIViewController+BaseViewController.m
//  jhj
//
//  Created by 王琳超 on 2016/12/23.
//  Copyright © 2016年 jhj. All rights reserved.
//

#import "UIViewController+BaseViewController.h"
#import "AddUMMethod.h"
@implementation UIViewController (BaseViewController)
+ (void)exchangeMethod{

    [AddUMMethod exchangeInstanceMethod:[self class] method1Sel:@selector(viewDidAppear:) method2Sel:@selector(newViewDidAppear:)];

}

- (void)newViewDidAppear:(BOOL)animated
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
    [self newViewDidAppear:animated];
}

@end
