//
//  UIViewController+Title.m
//  weiguang
//
//  Created by tiankey on 15/12/7.
//  Copyright © 2015年 tiankey. All rights reserved.
//

#import "UIViewController+Title.h"

@implementation UIViewController (Title)
-(void)letTitle:(NSString *)title andNormalImageName:(NSString *)normalImageName andSelectedImageName:(NSString *)selectedImageName
{
    self.title = title;
    self.tabBarItem.image = [UIImage imageNamed:normalImageName];
    self.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
}

+(id)letTitle:(NSString *)title andNormalImageName:(NSString *)normalImageName andSelectedImageName:(NSString *)selectedImageName
{
    UIViewController *vc = [[self alloc]init];
    vc.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:normalImageName];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    return vc;
}

@end
