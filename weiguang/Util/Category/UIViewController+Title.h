//
//  UIViewController+Title.h
//  weiguang
//
//  Created by tiankey on 15/12/7.
//  Copyright © 2015年 tiankey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Title)
-(void)letTitle:(NSString*)title andNormalImageName:(NSString*)normalImageName andSelectedImageName:(NSString*)selectedImageName;
+(id)letTitle:(NSString*)title andNormalImageName:(NSString*)normalImageName andSelectedImageName:(NSString*)selectedImageName;
@end
