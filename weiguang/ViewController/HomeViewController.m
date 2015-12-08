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
#import "UIButton+navi.h"
#import "AppDelegate.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    InformationViewController* vone = [InformationViewController letTitle:@"咨询" andNormalImageName:@"tab_infomation_normal" andSelectedImageName:@"tab_infomation_selected"];
    AroundViewController* vtwo = [AroundViewController letTitle:@"周边" andNormalImageName:@"tab_video_normal"
        andSelectedImageName:@"tab_video_selected"];
    RecordViewController* vthree = [RecordViewController letTitle:@"记录" andNormalImageName:@"tab_heros_normal"
        andSelectedImageName:@"tab_heros_selected"];
    DiscoveryViewController* vfour = [DiscoveryViewController letTitle:@"发现" andNormalImageName:@"tab_community_normal" andSelectedImageName:@"tab_community_selected"];
    MoreViewController* vfive = [MoreViewController letTitle:@"更多" andNormalImageName:@"tab_more_normal"
        andSelectedImageName:@"tab_more_selected"];
    
    self.viewControllers = @[
        [[UINavigationController alloc] initWithRootViewController:vone],
        [[UINavigationController alloc] initWithRootViewController:vtwo],
        [[UINavigationController alloc] initWithRootViewController:vthree],
        [[UINavigationController alloc] initWithRootViewController:vfour],
        [[UINavigationController alloc] initWithRootViewController:vfive]];
    
    NSArray* vall = @[vone, vtwo, vthree, vfour, vfive];
    for (UIViewController* uiobj in vall) {
        uiobj.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:[UIButton buttonInNaviwithTarget:self withAction:@selector(openorcloseleftlist)]];    }
    [self customNavigationBar];
    [self customTabbar];
}

-(void)openorcloseleftlist
{
    AppDelegate *tempappdelegate=(AppDelegate*)[[UIApplication sharedApplication]delegate];
    //两个开关的方法
    if (tempappdelegate.leftSlide.closed) {
        [tempappdelegate.leftSlide openLeftView];
    }
    else
    {
        [tempappdelegate.leftSlide closeLeftView];
    }
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

- (void)customNavigationBar{
    //navi背景色
    [[UINavigationBar appearance] setBarTintColor:kRGBColor(70, 133, 255)];//1
    [[UINavigationBar appearance] setBarStyle:UIBarStyleDefault];//1
    //设置左右按钮上的文字颜色
    [[UINavigationBar appearance]setTintColor:[UIColor whiteColor]];//1
    //返回按钮样式
    [[UINavigationBar appearance]setBackIndicatorImage:[UIImage imageNamed:@"back_btn"]];
    [[UINavigationBar appearance]setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"back_btn"]];
}

- (void)customTabbar{
    //背景图
    [[UITabBar appearance]setBackgroundImage:[UIImage imageNamed:@"appcoda-logo"]];
    //设置每一项被选中时的背景图
    [[UITabBar appearance]setSelectionIndicatorImage:[UIImage imageNamed:@"tabbar_selected_back"]];
    //修改文字的位置
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -2)];
}

@end
