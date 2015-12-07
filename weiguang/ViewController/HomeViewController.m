//
//  HomeViewController.m
//  weiguang
//
//  Created by tiankey on 15/12/7.
//  Copyright © 2015年 tiankey. All rights reserved.
//

#import "HomeViewController.h"
#import "InformationViewController.h"
#import "AroundViewController.h"
#import "RecordViewController.h"
#import "DiscoveryViewController.h"
#import "MoreViewController.h"
#import "UIViewController+Title.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.viewControllers = @[
        [[UINavigationController alloc] initWithRootViewController:[InformationViewController letTitle:@"咨询" andNormalImageName:@"" andSelectedImageName:@""]],
        [[UINavigationController alloc] initWithRootViewController:[AroundViewController new]],
        [[UINavigationController alloc] initWithRootViewController:[RecordViewController new]],
        [[UINavigationController alloc] initWithRootViewController:[DiscoveryViewController new]],
        [[UINavigationController alloc] initWithRootViewController:[MoreViewController new]]
        ];
    //[self customNavigationBar];
    //[self customTabbar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)customNavigationBar{
    //navi背景色
    [[UINavigationBar appearance] setBarTintColor:[UIColor blackColor]];//1
    [[UINavigationBar appearance] setBarStyle:UIBarStyleBlack];//1
    //设置左右按钮上的文字颜色
    [[UINavigationBar appearance]setTintColor:[UIColor whiteColor]];//1
    //返回按钮样式
    [[UINavigationBar appearance]setBackIndicatorImage:[UIImage imageNamed:@"back_btn"]];
    [[UINavigationBar appearance]setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"back_btn"]];
}

-(void)customTabbar{
    //背景图
    [[UITabBar appearance]setBackgroundImage:[UIImage imageNamed:@"appcoda-logo"]];
    //设置每一项被选中时的背景图
    [[UITabBar appearance]setSelectionIndicatorImage:[UIImage imageNamed:@"tabbar_selected_back"]];
    //修改文字的位置
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -2)];
}

@end
