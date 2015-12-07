//
//  LeftSlideViewController.h
//  weiguang
//
//  Created by tiankey on 15/12/7.
//  Copyright © 2015年 tiankey. All rights reserved.
//

#define kScreenSize           [[UIScreen mainScreen] bounds].size
#define kScreenWidth          [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight         [[UIScreen mainScreen] bounds].size.height

#define kMainPageDistance   100
#define kMainPageScale      0.8
#define kMainPageCenter  CGPointMake(kScreenWidth - kMainPageDistance + kScreenWidth * kMainPageScale / 2.0 , kScreenHeight / 2)

#define vCouldChangeDeckStateDistance  (kScreenWidth - kMainPageDistance) / 2.0 - 40
#define vSpeedFloat   0.7

#define kLeftAlpha 0.9
#define kLeftCenterX 30
#define kLeftScale 0.7

#define vDeckCanNotPanViewTag    404

#import <UIKit/UIKit.h>
#import "UIView+extra.h"

@interface LeftSlideViewController : UIViewController

@property (nonatomic, assign) CGFloat speedf;
@property (nonatomic, strong) UIViewController* leftVC;
@property (nonatomic, strong) UIViewController* mainVC;

@property (nonatomic, strong) UITapGestureRecognizer* tap;
@property (nonatomic, strong) UIPanGestureRecognizer* pan;

@property (nonatomic, assign) BOOL closed;

/**
 *  初始化侧滑控制器
 *
 *  @param leftVC 左侧视图控制器
 *  @param mainVC 右侧视图控制器
 *
 *  @return self
 */
-(instancetype)initWithLeftView:(UIViewController *)leftVC
                    andMainView:(UIViewController *)mainVC;

-(void)closeLeftView;
-(void)openLeftView;

-(void)setPanEnabled: (BOOL) enabled;

@end
